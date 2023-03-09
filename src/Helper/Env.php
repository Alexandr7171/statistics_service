<?php

namespace App\Helper;

class Env
{

    /**
     * db_host
     *
     * @var string
     */
    protected $db_host;
    /**
     * db_name
     *
     * @var string
     */
    protected $db_name;
    /**
     * db_charset
     *
     * @var string
     */
    protected $db_charset;
    /**
     * db_username
     *
     * @var string
     */
    protected $db_username;
    /**
     * db_password
     *
     * @var string
     */
    protected $db_password;


    public function __construct()
    {
        $this->db_host = getenv('DB_HOST');
        $this->db_name = getenv('DB_NAME');
        $this->db_charset = getenv('DB_CHARSET');
        $this->db_username = getenv('DB_USER');
        $this->db_password = getenv('DB_PASSWORD');
    }
}
