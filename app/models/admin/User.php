<?php

namespace app\models\admin;

use RedBeanPHP\R;

class User extends \app\models\User
{

    public static function isAdmin(): bool
    {
        return (isset($_SESSION['user']) && $_SESSION['user']['role'] == 'admin');
    }

    public function get_users($start, $perpage): array
    {
        return R::findAll("user", "LIMIT $start, $perpage");
    }

    public function get_user($id): array
    {
        return R::getRow("SELECT * FROM user WHERE id = ?", [$id]);
    }

}