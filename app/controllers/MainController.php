<?php

namespace app\controllers;


use wfm\Controller;

class MainController extends Controller
{

    public function indexAction()
    {
        $names = ['John', 'Dave', 'Katy'];
        $this->setMeta('Главная страница', 'Description...', 'keywords...');
//        $this->set(['test' => 'TEST VAR', 'name' => 'John']);
//        $this->set(['names' => $names]);
        $this->set(compact('names'));
    }

}