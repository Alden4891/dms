<?php
class User_auth_model extends CI_Model {

    public function db_auth($username, $password) {
        $this->load->database();
        $user_data = $this->db->get_where('users', array('username' => $username))->row_array();
        $is_login_verified = $user_data && password_verify($password, $user_data['password']);

        if ($is_login_verified) {
            $user_data = $this->db->where('username', $username)->get('users')->result_array();
            $data= $user_data[0];
            $this->session->set_userdata($data);
        }

        return $is_login_verified;

    }

    public function ldap_auth($username, $password) {
        $this->load->library('encryption');
        $adServer = $this->config->item('ldap_server');
        $ldap = ldap_connect($adServer);
        $ldaprdn = 'ENTDSWD' . "\\" . $username;

        ldap_set_option($ldap, LDAP_OPT_PROTOCOL_VERSION, 3);
        ldap_set_option($ldap, LDAP_OPT_REFERRALS, 0);

        $bind = @ldap_bind($ldap, $ldaprdn, $password);

        if ($bind) {
            $filter = "(sAMAccountName=$username)";
            $result = ldap_search($ldap, "DC=ENTDSWD,DC=LOCAL", $filter);
            $info   = ldap_get_entries($ldap, $result);

            if ($info['count'] > 1) {
                $this->session->set_flashdata('login_failed', 'Multiple account found!');
                return false;
            }

            $userDn = $info[0]["distinguishedname"][0];
            // $ad_data['password']   = $this->encryption->encrypt($password);
            $ad_data['password']   = password_hash($password, PASSWORD_DEFAULT);
            $ad_data['firstname']  = $info[0]["givenname"][0];
            $ad_data['middlename'] = $info[0]["initials"][0];
            $ad_data['lastname']   = $info[0]["sn"][0];
            $ad_data['username']   = $info[0]["samaccountname"][0];
            $ad_data['email']      = $info[0]["mail"][0];
            $ad_data['contact']    = @$info[0]["mobile"][0];

            // Check if the user already exists in the database
            $existing_user = $this->db->get_where('users', array('username' => $ad_data['username']))->row();
            if ($existing_user) {
              // User already exists, perform an update
              unset($ad_data['user_id']);
              unset($ad_data['username']);
              $this->db->where('username', $info[0]["samaccountname"][0]);
              $this->db->update('users', $ad_data);
            } else {
              //if unregistered: save & retrive user credential (user_id, role, etc!)
              $sql = $this->db->insert_string('users', $ad_data);
              $sql_ignore = str_replace('INSERT INTO','INSERT IGNORE INTO',$sql);
              $res = $this->db->query($sql_ignore);
              $user_id = $this->db->insert_id();
            }
          



            //create sessions
            $user_data = $this->db->where('username', $username)->get('users')->result_array();
            $data= $user_data[0];
            $this->session->set_userdata($data);

            //close ldap
            @ldap_close($ldap);
            $this->session->set_flashdata('login_success', 'Access granted!');
            return true;
        } else {
            $this->session->set_flashdata('login_failed', 'Username and password missmatch!');
            return false;
        }
    }


}
