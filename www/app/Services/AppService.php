<?php

namespace App\Services;

class AppService
{
    private static $genders = ['1' => 'муж', '2' => 'жен'];

    public function __construct()
    {
    }

    public static function getGenders()
    {
        return self::$genders;
    }
}
