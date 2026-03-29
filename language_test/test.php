<?php

// treesitter highlight - ok
// php-cs-fixer - ok
// lsp errors - ok
// lsp display errors - ok
// phpstan error displays - ???

$test = 'lau_gab';

function test($param)
{
    if ($param === 'gab') {
        echo '1';
    } else {
        echo 'test';
    }
}

class Employee
{
    public function __construct()
    {
    }

    public function addAndEcho()
    {
        echo 1 + 1;
    }

}

test();

$t = new Employee();
$t->addAndEcho();
