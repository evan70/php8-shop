<?php


namespace app\controllers\admin;


use app\models\admin\Product;
use RedBeanPHP\R;
use wfm\App;
use wfm\Pagination;

/** @property Product $model */
class ProductController extends AppController
{

    public function indexAction()
    {
        $lang = App::$app->getProperty('language');
        $page = get('page');
        $perpage = 3;
        $total = R::count('product');
        $pagination = new Pagination($page, $perpage, $total);
        $start = $pagination->getStart();

        $products = $this->model->get_products($lang, $start, $perpage);
        $title = 'Список товаров';
        $this->setMeta("Админка :: {$title}");
        $this->set(compact('title', 'products', 'pagination', 'total'));
    }

    public function addAction()
    {
        if (!empty($_POST)) {
            if ($this->model->product_validate()) {
                $_SESSION['success'] = 'Товар добавлен';
            }
            debug($_POST,1);
            redirect();
        }

        $title = 'Новый товар';
        $this->setMeta("Админка :: {$title}");
        $this->set(compact('title'));
    }

    public function getDownloadAction()
    {
        /*$data = [
            'items' => [
                [
                    'id' => 1,
                    'text' => 'Файл 1',
                ],
                [
                    'id' => 2,
                    'text' => 'Файл 2',
                ],
                [
                    'id' => 3,
                    'text' => 'File 1',
                ],
                [
                    'id' => 4,
                    'text' => 'File 2',
                ],
            ]
        ];*/
        $q = get('q', 's');
        $downloads = $this->model->get_downloads($q);
        echo json_encode($downloads);
        die;
    }

}