<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Payment extends CI_Controller {
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

    public function deposit()
    {
        $valor = $this->input->post('field');

        $isSuitPay = $this->app->isSuitPay();
        $isEzzyBank = $this->app->isEzzyBank();

        if($isSuitPay == true){
            redirect('suit/criarQrCode/'.$valor);
        }
        if($isEzzyBank == true){
            redirect('ezze/criarQrCode/'.$valor);
        }
    }
    public function saque()
    {
        $isSuitPay = $this->app->isSuitPay();
        $isEzzyBank = $this->app->isEzzyBank();

        if ($isSuitPay == true) {
            $valor = $this->input->post('value');
            $tipo = $this->input->post('type');
            $key = $this->input->post('key');

            $config =  $this->db->get('config')->result();
            
            if ($valor >= $config[0]->minsaque) {
                /* Desativa saque automatico
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

                if ($dados['idTransaction']) {*/
                $insert = array(
                    'transacao_id' => 'SAQUE-' . md5(date('Y-m-d H:i:s')),
                    'usuario' => $this->session->id,
                    'valor' => $valor,
                    'tipo' => 'saque',
                    'data_hora' => date('Y-m-d H:i:s'),
                    'status' => 'processamento',
                    'tipo_chave' => $tipo,
                    'chave' => $key
                );

                $int_url = base_url().'/fiverscan/sacarValor/'.$this->session->id.'/'.$valor;
                $exec = file_get_contents($int_url);
                $this->db->insert('transacoes', $insert);
                $this->session->set_userdata('transacao_id', $dados['idTransaction']);
                $msg = "Saque solicitado com sucesso!";
                $this->session->set_flashdata('msg', $msg);
                $this->session->set_flashdata('tipo', "success");
                redirect('');
            } else {
                $msg = "Erro ao solicitar saque, o valor mínimo para saque é de R$" . $config[0]->minsaque;
                $this->session->set_flashdata('msg', $msg);
                $this->session->set_flashdata('tipo', "danger");
                redirect(''); 
            }
        }
        if($isEzzyBank == true){
            redirect('ezze/criarSaque');
        }
    }
    public function status()
    {
        $isSuitPay = $this->app->isSuitPay();
        $isEzzyBank = $this->app->isEzzyBank();

        if($isSuitPay == true){
            redirect('suit/statusPix');
        }
        if($isEzzyBank == true){
            redirect('ezze/statusPix');
        }
    }


}
