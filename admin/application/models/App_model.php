
<?php 
require_once APPPATH .'models/App_extends.php';  

class App_model extends App_extends {

    public function nomeSistema()
	{
		$this->db->where('id',0);	
		return $this->db->get('config')->row()->nome;
	}
	public function logo()
	{
		$this->db->where('id',0);	
		return $this->db->get('config')->row()->logo;
	}
    public function getStatistics() {
        $this->db->select('
            (SELECT SUM(CASE WHEN tipo = "deposito" THEN valor ELSE 0 END) - SUM(CASE WHEN tipo = "saque" THEN valor ELSE 0 END) AS lucro_24h FROM transacoes WHERE data_hora >= NOW() - INTERVAL 24 HOUR AND status = "pago") as lucro_24h,
            (SELECT SUM(CASE WHEN tipo = "deposito" THEN valor ELSE 0 END) AS depositos_24h FROM transacoes WHERE data_hora >= NOW() - INTERVAL 24 HOUR) as depositos_24h,
            (SELECT COUNT(*) AS pixs_gerados_24h FROM transacoes WHERE tipo = "deposito" AND data_hora >= NOW() - INTERVAL 24 HOUR) as pixs_gerados_24h,
            (SELECT COUNT(DISTINCT usuario) AS cadastros_totais FROM transacoes WHERE data_hora >= NOW() - INTERVAL 24 HOUR) as cadastros_24h,
            (SELECT SUM(CASE WHEN tipo = "deposito" THEN valor ELSE 0 END) - SUM(CASE WHEN tipo = "saque" THEN valor ELSE 0 END) AS lucro_total FROM transacoes WHERE status = "pago") as lucro_total,
            (SELECT SUM(CASE WHEN tipo = "deposito" THEN valor ELSE 0 END) AS deposito_total FROM transacoes WHERE tipo = "deposito" AND status = "pago") as deposito_total,
            (SELECT COUNT(*) AS pixs_gerados_total FROM transacoes WHERE tipo = "deposito") as pixs_gerados_total,
            (SELECT COUNT(DISTINCT usuario) AS cadastros_totais FROM transacoes) as cadastros_totais,
            (SELECT COUNT(*) AS pixs_gerados_total FROM transacoes WHERE tipo = "deposito" AND status = "pago") as pixs_pagos
        ');
        $query = $this->db->get();
        return $query->result();
    }
    public function getSaques() {
        $this->db->select('t.id AS transacao_id, t.tipo_chave, t.chave, t.valor, t.tipo, t.data_hora, t.qrcode, t.code, t.status, u.nome AS nome_usuario, u.nascimento, u.cpf, u.telefone, u.email, u.afiliado, u.endereco, u.cep, u.chave_pix');
        $this->db->from('transacoes t');
        $this->db->join('usuarios u', 't.usuario = u.id');
        $this->db->where('t.tipo', 'saque');
        $this->db->order_by("data_hora", "desc");
        $query = $this->db->get();
        return $query->result();
    }
    public function getDep() {
        $this->db->select('t.id AS transacao_id, t.valor, t.tipo, t.data_hora, t.qrcode, t.code, t.status, u.nome AS nome_usuario, u.nascimento, u.cpf, u.telefone, u.email, u.afiliado, u.endereco, u.cep, u.chave_pix');
        $this->db->from('transacoes t');
        $this->db->join('usuarios u', 't.usuario = u.id');
        $this->db->where('t.tipo', 'deposito');
        $this->db->where('t.removido', 0); 
        $query = $this->db->get();
        return $query->result();
    }
    public function getMov() {
        $this->db->select('t.id AS transacao_id, t.valor, t.tipo, t.data_hora, t.qrcode, t.code, t.status, u.nome AS nome_usuario, u.nascimento, u.cpf, u.telefone, u.email, u.afiliado, u.endereco, u.cep, u.chave_pix');
        $this->db->from('transacoes t');
        $this->db->join('usuarios u', 't.usuario = u.id');
        $this->db->where('t.removido', 0); 
        $query = $this->db->get();
        return $query->result();
    }
    public function isSuitPay() {
        // Verifica se o registro com id = 0 está ativo
        $query = $this->db->get_where('suitpay', array('id' => 0, 'ativo' => 1));

        // Verifica se a consulta retornou algum resultado
        if ($query->num_rows() > 0) {
            return true; // O registro está ativo
        } else {
            return false; // O registro não está ativo
        }
    }
	public function isEzzyBank() {
        // Verifica se o registro com id = 0 está ativo
        $query = $this->db->get_where('ezzebank', array('id' => 0, 'ativo' => 1));

        // Verifica se a consulta retornou algum resultado
        if ($query->num_rows() > 0) {
            return true; // O registro está ativo
        } else {
            return false; // O registro não está ativo
        }
    }

}