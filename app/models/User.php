<?php


namespace app\models;


class User extends AppModel
{

    public array $attributes = [
        'email' => '',
        'password' => '',
        'name' => '',
        'address' => '',
    ];

    public static function checkAuth(): bool
    {
        return isset($_SESSION['user']);
    }

}