<?php 
    class Users extends CI_Model{

        public function getUser($id){ 
            $this->db->select('*');
            $this->db->from('user');
            $this->db->where('email', $id);
            $query = $this->db->get(); 
            return $query->first_row();
        }

        public function getUserID($id){ 
            $this->db->select('*');
            $this->db->from('user');
            $this->db->where('id', $id);
            $query = $this->db->get(); 
            return $query->first_row();
        }

        public function getUserKasir(){ 
            $this->db->select('*');
            $this->db->from('user');
            $this->db->where('role', 2);
            $query = $this->db->get();
            return $query->result();
        }

        public function delUser($id){
            $this->db->where('id', $id);
            try{
                $this->db->delete('user');
                return true;
            }catch(Exception $e){
                return false;
            }
        }

        public function updateProfil($id, $data = []){
            if(sizeof($data) <= 0){
                return 0;
            }
            $update_data = [
                'nama' => $data['nama'],
                'email' => $data['email'],
                'telp' => $data['telp'],
                'alamat' => $data['alamat'],
            ];
            $this->db->where('email',$id);
            try{
                $this->db->update('user', $update_data);
                return true;
            }catch(Exception $e)
            {
                return false;
            }
        }
    }
?>   