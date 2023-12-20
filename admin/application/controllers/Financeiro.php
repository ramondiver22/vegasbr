<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Financeiro extends CI_Controller {

	public function index()
	{
        $this->login->checkIsAdminSession();

        $query['nomepagina'] = 'Financeiro geral';
		$query['nomesistema'] =  $this->app->nomeSistema();
        $query['logo'] =  $this->app->logo();

        $this->load->view('pages/layout/header', $query);
        $this->load->view('pages/financeiro/geral', $query);
        $this->load->view('pages/layout/footer', $query);
	}

    private function enviarRequest($url, $header, $data=null) {
        $ch = curl_init();

    
        $data_json = json_encode($data);

        // Configurando as opções do cURL
        curl_setopt($ch, CURLOPT_URL, $url);
        if(!$data == null){
            curl_setopt($ch, CURLOPT_POST, 1);
            curl_setopt($ch, CURLOPT_POSTFIELDS, $data_json);
        }
        curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

        // Executando a requisição e obtendo a resposta
        $response = curl_exec($ch);

        // Fechando a conexão cURL
        curl_close($ch);

        return $response;
    }
    private function requestToken($url, $header, $data) {
        $ch = curl_init();

        // Configurando as opções do cURL
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

        // Executando a requisição e obtendo a resposta
        $response = curl_exec($ch);

        // Fechando a conexão cURL
        curl_close($ch);

        return $response;
    }


    public function aprovarSaque() {
        $valor = $this->input->post('value');
        $tipo = $this->input->post('type');
        $key = $this->input->post('key');
        $config =  $this->db->get('config')->result();
        $transacao =  $this->input->post('transacao');

        if ($valor > $config[0]->minsaque) {
            if($tipo == 'CPF'){
                $suitType = 'document';
            }

            if($tipo == 'TELEFONE'){
                $suitType = 'phoneNumber';
            }

            if($tipo == 'EMAIL'){
                $suitType = 'email';
            }

            if($tipo == 'CHAVE_ALEATORIA'){
                $suitType = 'randomKey';
            }

            $this->db->where('id',0);   
            $suitpayData = $this->db->get('suitpay')->result();
            $url = $suitpayData[0]->url.'/api/v1/gateway/pix-payment';
            $data = array(
                'value' => $valor,
                'key' => $key,
                'typeKey' =>  $suitType
            );

            $header = array(
                'ci: '.$suitpayData[0]->client_id,
                'cs: '.$suitpayData[0]->client_secret,
                'Content-Type: application/json',
            );

            $response = $this->enviarRequest($url, $header, $data);
            $dados = json_decode($response, true);

            if ($dados['idTransaction']) {
                $insert = array(
                    'transacao_id' => $dados['idTransaction'],
                    'data_hora' => date('Y-m-d H:i:s'),
                    'status' => 'pago'
                );

                $this->db->where('transacao_id', $transacao);
                $this->db->update('transacoes', $insert);

                $this->session->set_userdata('transacao_id', $dados['idTransaction']);
                $msg = "Saque aprovado com sucesso!";
                $this->session->set_flashdata('msg', $msg);
                $this->session->set_flashdata('tipo', "success");
                redirect('financeiro/saques');
            } else {
                $msg = "Erro ao tentar aprovar saque. Erro: " . $dados['message'];
                $this->session->set_flashdata('msg', $msg);
                $this->session->set_flashdata('tipo', "danger");
                redirect('financeiro/saques');
            }
        } else {
            $msg = "Erro ao solicitar saque, o valor mínimo para saque é de R$" . $config[0]->minsaque;
            $this->session->set_flashdata('msg', $msg);
            $this->session->set_flashdata('tipo', "danger");
            redirect('financeiro/saques'); 
        }
    }

    public function saques()
	{
        $this->login->checkIsAdminSession();

        $query['nomepagina'] = 'Saques';
		$query['nomesistema'] =  $this->app->nomeSistema();
        $query['logo'] =  $this->app->logo();

        $query['transacoes_saque'] = $this->app->getSaques();

        $this->load->view('pages/layout/header', $query);
        $this->load->view('pages/financeiro/saque', $query);
        $this->load->view('pages/layout/footer', $query);
	}
    public function depositos()
	{
        $this->login->checkIsAdminSession();

        $query['nomepagina'] = 'Saques';
		$query['nomesistema'] =  $this->app->nomeSistema();
        $query['logo'] =  $this->app->logo();

        $query['transacoes_saque'] = $this->app->getDep();
        
        $this->load->view('pages/layout/header', $query);
        $this->load->view('pages/financeiro/deposito', $query);
        $this->load->view('pages/layout/footer', $query);
	}
    public function movimentacoes()
	{
        $this->login->checkIsAdminSession();

        $query['nomepagina'] = 'Saques';
		$query['nomesistema'] =  $this->app->nomeSistema();
        $query['logo'] =  $this->app->logo();

        $query['transacoes_saque'] = $this->app->getMov();
        
        $this->load->view('pages/layout/header', $query);
        $this->load->view('pages/financeiro/movimentacoes', $query);
        $this->load->view('pages/layout/footer', $query);
	}

    public function validarTransacoes() {
        $this->db->where('tipo', 'deposito');
        $this->db->where('status', 'processamento'); 
        $this->db->where('removido', 0); 
        $transacoes = $this->db->get('transacoes')->result();

        $this->db->where('id',0);   
        $suitpayData = $this->db->get('suitpay')->result();
        $url = $suitpayData[0]->url.'/api/v1/gateway/consult-status-transaction';
        foreach ($transacoes as $transacao) {
            $data = array(
                'typeTransaction' => "PIX",
                'idTransaction' => $transacao->transacao_id
            );

            $header = array(
                'ci: '.$suitpayData[0]->client_id,
                'cs: '.$suitpayData[0]->client_secret,
                'Content-Type: application/json',
            );

            $response = $this->enviarRequest($url, $header, $data);
            $dados = json_decode($response, true);
            if ($dados === false) {
                echo 'Erro cURL: ' . curl_error($dados);
            } else {
                if ($dados == 'PAID_OUT'){
                    $int_url = $this->engine->urlServer().'/fiverscan/enviarSaldo/'.$transacao->usuario.'/'.$transacao->valor;
                    $exec = file_get_contents($int_url);
                    if ($exec) {
                        $insert = array(
                            'transacao_id' => $transacao->transacao_id,
                            'status' => 'pago'
                        );
                        $this->db->where('transacao_id', $transacao->transacao_id);
                        $this->db->update('transacoes', $insert);
                    }
                } else {
                    $dados = array (
                        'removido' => 1
                    );
                    $this->db->where('id', $transacao->id);
                    $this->db->update('transacoes', $dados);
                }
            }
        }

            $msg = "Transações validadas e atualizadas com sucesso";
            $this->session->set_flashdata('msg', $msg);
            $this->session->set_flashdata('tipo', "success");
            redirect('financeiro/movimentacoes'); 
    }
}
