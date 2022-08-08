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
                    $_SESSION['errors'] = 'Chyba перемещения файла';
                }
            }
            redirect();
        }
        $title = 'Добавление файла (цифрового товара)';
        $this->setMeta("Админка :: {$title}");
        $this->set(compact('title'));
    }

    public function deleteAction()
    {
        $id = get('id');
        if (R::count('order_download', 'download_id = ?', [$id])) {
            $_SESSION['errors'] = 'Невозможно удалить - данный файл уже приобретался';
            redirect();
        }
        if (R::count('product_download', 'download_id = ?', [$id])) {
            $_SESSION['errors'] = 'Невозможно удалить - данный файл прикреплен к товару';
            redirect();
        }
        if ($this->model->download_delete($id)) {
            $_SESSION['success'] = 'Файл удален';
        } else {
            $_SESSION['errors'] = 'Ошибка удаления файла';
        }
        redirect();
    }

}