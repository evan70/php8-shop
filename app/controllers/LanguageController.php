<?php

namespace app\controllers;

use app\models\Cart;
use wfm\App;

class LanguageController extends AppController
{

    public function changeAction()
    {
        $lang = get('lang', 's');
        if ($lang) {
            if (array_key_exists($lang, App::$app->getProperty('languages'))) {
                // trim base url
                $url = trim(str_replace(PATH, '', $_SERVER['HTTP_REFERER']), '/');

                // 2 url parts... 1st language
                $url_parts = explode('/', $url, 2);
                // find language in lang. array
                if (array_key_exists($url_parts[0], App::$app->getProperty('languages'))) {
                    // get new lang. to url if not base lang.
                    if ($lang != App::$app->getProperty('language')['code']) {
                        $url_parts[0] = $lang;
                    } else {
                        // if base lang. - remove from url
                        array_shift($url_parts);
                    }
                } else {
                    // add new lang, if not base language
                    if ($lang != App::$app->getProperty('language')['code']) {
                        array_unshift($url_parts, $lang);
                    }
                }

                Cart::translate_cart(App::$app->getProperty('languages')[$lang]);

                $url = PATH . '/' . implode('/', $url_parts);
                redirect($url);
            }
        }
        redirect();
    }

}
