<?php

require __DIR__ . '/vendor/autoload.php';

use App\ReportInterface;
use Dotenv\Dotenv;

$dotenv = Dotenv::createUnsafeImmutable(__DIR__);
$dotenv->load();

$options = getopt('f:');

$json_file_path = $options['f'];

if (!array_key_exists('f', $options)) {
    throw new Exception('No file specified');
}

$json_file = file_get_contents($json_file_path);
$data = json_decode($json_file, true);

function getReportObject(): ReportInterface
{
    return new \App\Controller\Item1Report;
}
