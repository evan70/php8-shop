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
        $title = 'Список страниц';
        $this->setMeta("Админка :: {$title}");
        $this->set(compact('title', 'pages', 'pagination', 'total'));
    }

    public function deleteAction()
    {
        $id = get('id');
        if ($this->model->deletePage($id)) {
            $_SESSION['success'] = 'Страница удалена';
        } else {
            $_SESSION['errors'] = 'Ошибка удаления страницы';
        }
        redirect();
    }

}