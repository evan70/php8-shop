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
        $title = 'Súbory (digitálny produkt)';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title', 'downloads', 'pagination', 'total'));
    }

    public function addAction()
    {
        if (!empty($_POST)) {
            if ($this->model->download_validate()) {
                if ($data = $this->model->upload_file()) {
                    if ($this->model->save_download($data)) {
                        $_SESSION['success'] = 'Súbor uložený';
                    } else {
                        $_SESSION['errors'] = 'Chyba uloženia súboru';
                    }
                } else {
                    $_SESSION['errors'] = 'Chyba premenovania súboru';
                }
            }
            redirect();
        }
        $title = 'Pridať súbor (digitálny produkt)';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title'));
    }

    public function deleteAction()
    {
        $id = get('id');
        if (R::count('order_download', 'download_id = ?', [$id])) {
            $_SESSION['errors'] = 'Nie je možné vymazať súbor - súbor je už objednaný';
            redirect();
        }
        if (R::count('product_download', 'download_id = ?', [$id])) {
            $_SESSION['errors'] = 'Nie je možné vymazať súbor - súbor je pridelený k produktu';
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
