<?php

namespace App;

abstract class Report extends \App\Helper\Connection implements ReportInterface
{
    /**
     * page
     *
     * @var int
     */
    protected int $page = 1;

    /**
     * limit
     *
     * @var int
     */
    protected int $limit = 10;

    /**
     * fields
     *
     * @var array
     */
    protected array $fields = [];

    /**
     * setPage
     *
     * @param  int $page
     * @return self
     */
    public function setPage(int $page): self
    {
        $this->page = $page;
        return $this;
    }

    /**
     * getPage
     *
     * @return int
     */
    public function getPage(): int
    {
        return $this->page;
    }

    /**
     * setlimit
     *
     * @param  int $limit
     * @return self
     */
    public function setLimit(int $limit): self
    {
        $this->limit = $limit;
        return $this;
    }

    /**
     * getlimit
     *
     * @return int
     */
    public function getLimit(): int
    {
        return $this->limit;
    }

    /**
     * setFields
     *
     * @param  array $fields
     * @return self
     */
    public function setFields(array $fields): self
    {
        $this->fields = $fields;
        return $this;
    }

    /**
     * getFields
     *
     * @return array
     */
    public function getFields(): array
    {
        return $this->fields;
    }

    public function actionMain(): array
    {
        $page = $this->getPage();
        $limit = $this->getLimit();
        $fields = $this->getFields();

        return [
            'page' => $page,
            'limit' => $limit,
            'fields' => $fields
        ];
    }

    public function responseSuccessJson(array $data): void
    {
        header('Content-Type: application/json; charset=UTF-8');
        echo json_encode($data);
    }
}
