<?php

namespace app\controllers\admin;

use app\models\admin\Download;
use RedBeanPHP\R;
use wfm\App;
use wfm\Pagination;

/** @property Download $model */
class DownloadController extends AppController
{

    public function indexAction()
    {
        $lang = App::$app->getProperty('language');
        $page = get('page');
        $perpage = 20;
        $total = R::count('download');
        $pagination = new Pagination($page, $perpage, $total);
        $start = $pagination->getStart();

        $downloads = $this->model->get_downloads($lang, $start, $perpage);
        $title = 'Súbory (digitálne produkty)';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title', 'downloads', 'pagination', 'total'));
    }

    public function addAction()
    {
        if (!empty($_POST)) {
            if ($this->model->download_validate()) {
                if ($data = $this->model->upload_file()) {
                    if ($this->model->save_download($data)) {
                        $_SESSION['success'] = 'Súbor pripravený';
                    } else {
                        $_SESSION['errors'] = 'Chyba prípravy súboru';
                    }
                } else {
                    $_SESSION['errors'] = 'Chyba prenosu súboru';
                }
            }
            redirect();
        }
        $title = 'Nahranie súboru (digit. produkt)';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title'));
    }

    public function deleteAction()
    {
        $id = get('id');
        if (R::count('order_download', 'download_id = ?', [$id])) {
            $_SESSION['errors'] = 'Súbor nie je možné vymazať - je viazaný k session';
            redirect();
        }
        if (R::count('product_download', 'download_id = ?', [$id])) {
            $_SESSION['errors'] = 'Súbor nie je možné vymazať - je viazaný na produkt';
            redirect();
        }
        if ($this->model->download_delete($id)) {
            $_SESSION['success'] = 'Súbor vymazaný';
        } else {
            $_SESSION['errors'] = 'Chyba vymazania súboru';
        }
        redirect();
    }

}
