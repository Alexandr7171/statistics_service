<?php

namespace App;

interface ReportInterface
{
    /**
     * setPage
     *
     * @param  mixed $page
     * @return self
     */
    public function setPage(int $page): self;

    /**
     * getPage
     *
     * @return int
     */
    public function getPage(): int;

    /**
     * setLimit
     *
     * @param  mixed $limit
     * @return self
     */
    public function setLimit(int $limit): self;

    /**
     * getLimit
     *
     * @return int
     */
    public function getLimit(): int;

    /**
     * setFields
     *
     * @param  mixed $fields
     * @return self
     */
    public function setFields(array $fields): self;

    /**
     * getFields
     *
     * @return array
     */
    public function getFields(): array;
}
