<?php

namespace app\controllers\admin;

use RedBeanPHP\R;

class MainController extends AppController
{

    public function indexAction()
    {
        $orders = R::count('orders');
        $new_orders = R::count('orders', 'status = 0');
        $users = R::count('user');
        $products = R::count('product');

        $title = 'Hlavná stránka';
        $this->setMeta('Admin :: Hlavná stránka');
        $this->set(compact('title', 'orders', 'new_orders', 'users', 'products'));
    }

}
