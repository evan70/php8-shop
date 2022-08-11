<?php

namespace app\controllers\admin;

use app\models\admin\Page;
use RedBeanPHP\R;
use wfm\App;
use wfm\Pagination;

/** @property Page $model */
class PageController extends AppController
{

    public function indexAction()
    {
        $lang = App::$app->getProperty('language');
        $page = get('page');
        $perpage = 20;
        $total = R::count('page');
        $pagination = new Pagination($page, $perpage, $total);
        $start = $pagination->getStart();

        $pages = $this->model->get_pages($lang, $start, $perpage);
        $title = 'Zoznam stránok';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title', 'pages', 'pagination', 'total'));
    }

    public function deleteAction()
    {
        $id = get('id');
        if ($this->model->deletePage($id)) {
            $_SESSION['success'] = 'Stránka bola vymazaná';
        } else {
            $_SESSION['errors'] = 'Chyba vymazania stránky';
        }
        redirect();
    }

    public function addAction()
    {
        if (!empty($_POST)) {
            if ($this->model->page_validate()) {
                if ($this->model->save_page()) {
                    $_SESSION['success'] = 'Stránka bola pridaná';
                } else {
                    $_SESSION['errors'] = 'Chyba pridania stránky';
                }
            }
            redirect();
        }

        $title = 'Nová stránka';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title'));
    }

    public function editAction()
    {
        $id = get('id');

        if (!empty($_POST)) {
            if ($this->model->page_validate()) {
                if ($this->model->update_page($id)) {
                    $_SESSION['success'] = 'Страница сохранена';
                } else {
                    $_SESSION['errors'] = 'Ошибка обновления страницы';
                }
            }
            redirect();
        }

        $page = $this->model->get_page($id);
        if (!$page) {
            throw new \Exception('Not found page', 404);
        }
        $title = 'Редактирование страницы';
        $this->setMeta("Админка :: {$title}");
        $this->set(compact('title', 'page'));
    }

}