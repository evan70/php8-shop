<?php

define("DEBUG", 1);
define("ROOT", dirname(__DIR__));
define("WWW", ROOT . '/public');
define("APP", ROOT . '/app');
define("CORE", ROOT . '/vendor/wfm');
define("HELPERS", ROOT . '/vendor/wfm/helpers');
define("CACHE", ROOT . '/tmp/cache');
define("LOGS", ROOT . '/tmp/logs');
define("DB", ROOT . '/db');
define("CONFIG", ROOT . '/config');
define("LAYOUT", 'ishop');
define("PATH", 'http://nodb8.local');
define("ADMIN", 'http://nodb8.local/admin');
define("NO_IMAGE", '/public/uploads/no_image.jpg');

require_once ROOT . '/vendor/autoload.php';
