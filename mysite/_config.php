<?php

global $project;
$project = 'midland-electrical';

global $database;
$database = 'SS_midlandelectrical';

require_once('conf/ConfigureFromEnv.php');

// Set the site locale
i18n::set_locale('en_GB');
