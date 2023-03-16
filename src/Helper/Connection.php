<?php

namespace App\Helper;

class Connection extends Env
{
    /**
     * create a new PDO connection
     *
     * @return \PDO $conn
     */
    public function connection()
    {
        $dsn = 'mysql:host=' . $this->db_host . ';dbname=' . $this->db_name . ';charset=' . $this->db_charset;
        $conn = new \PDO($dsn, $this->db_username, $this->db_password);
        $conn->setAttribute(\PDO::ATTR_EMULATE_PREPARES, false);
        return $conn;
    }
}
