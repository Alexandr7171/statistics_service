<?php

namespace App\Controller;

use App\Model\Item1Model;

class Item1Report extends \App\Report
{
    /**
     * getModel
     *
     * @param  mixed $reset
     * @return Item1Model
     */
    public function getModel(bool $reset = false): Item1Model
    {
        static $model = null;

        if ($reset) {
            $model = null;
        }

        if ($model === null) {
            $model = new Item1Model();
        }

        return $model;
    }

    public function actionIndex()
    {
        try {

            [
                'page' => $page,
                'limit' => $limit,
                'fields' => $fields
            ] = $this->actionMain();
        } catch (\Throwable $error) {
            throw $error;
        }
    }
}
