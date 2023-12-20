
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
	public function config()
	{
		$this->db->where('id',0);	
		return $this->db->get('config')->result();
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