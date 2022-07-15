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
        $title = 'Produkty';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title', 'products', 'pagination', 'total'));
    }

    public function addAction()
    {
        if (!empty($_POST)) {
            if ($this->model->product_validate()) {
                if ($this->model->save_product()) {
                    $_SESSION['success'] = 'Produkt úspešne pridaný';
                } else {
                    $_SESSION['errors'] = 'Chyba pri pridaní produktu';
                }
            }
            redirect();
        }

        $title = 'Nový produkt';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title'));
    }

    public function deleteAction()
    {
        $id = get('id');
        $errors = '';

        if ($errors) {
            $_SESSION['errors'] = $errors;
        } else {
            R::exec("DELETE FROM product WHERE id = ?", [$id]);
            R::exec("DELETE FROM product_description WHERE product_id = ?", [$id]);
            $_SESSION['success'] = 'Produkt bol úspešne vymazaný';
        }
        redirect();
    }

    public function editAction()
    {
        $id = get('id');

        if (!empty($_POST)) {
            if ($this->model->product_validate()) {
                if ($this->model->update_product($id)) {
                    $_SESSION['success'] = 'Produkt úspešne uložený';
                } else {
                    $_SESSION['errors'] = 'Chyba úpravy produktu';
                }
            }
            redirect();
        }



        $product = $this->model->get_product($id);
        if (!$product) {
            throw new \Exception('Not found product', 404);
        }

        $gallery = $this->model->get_gallery($id);

        $lang = App::$app->getProperty('language')['id'];
        App::$app->setProperty('parent_id', $product[$lang]['category_id']);
        $title = 'Úprava produktu';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title', 'product', 'gallery'));
    }

    public function getDownloadAction()
    {
        $q = get('q', 's');
        $downloads = $this->model->get_downloads($q);
        echo json_encode($downloads);
        die;
    }

}
