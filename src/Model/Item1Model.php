<?php

namespace App\Model;

class Item1Model extends \App\Helper\Connection
{
    /**
     * order_table
     *
     * @var string
     */
    private $order_table = 'stats_order_part';

    /**
     * getItemData
     *
     * @param  mixed $page
     * @param  mixed $limit
     * @param  mixed $fields
     * @return void
     */
    public function getItemData($page, $limit, $fields)
    {
        $select = [];

        $sql = 'SELECT * FROM' . '`' . $this->order_table . '`';

        $stmt = $this->connection()->prepare($sql);

        $stmt->execute();

        $result = $stmt->fetchAll(\PDO::FETCH_ASSOC);

        return $result;
    }
}
