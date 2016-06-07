<?php

class Page extends SiteTree {

    private static $db = array(
    );
    private static $has_one = array(
    );

}

class Page_Controller extends ContentController {

    /**
     * An array of actions that can be accessed via a request. Each array element should be an action name, and the
     * permissions or conditions required to allow the user to access it.
     *
     * <code>
     * array (
     *     'action', // anyone can access this action
     *     'action' => true, // same as above
     *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
     *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
     * );
     * </code>
     *
     * @var array
     */
    private static $allowed_actions = array(
    );

    public function init() {
        parent::init();
        $themeFolder = $this->ThemeDir();
        Requirements::set_combined_files_folder($themeFolder . '/combinedfiles');
        
        /* CSS */
        
        Requirements::css($themeFolder . "/css/styles.css");
        
        Requirements::css("https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css");
        Requirements::css("https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css");
        
        
        /* Angular */
        $JSFilesExternal = array(
            $themeFolder . "/bower_components/angular/angular.js",
            $themeFolder . "/bower_components/angular-bootstrap/ui-bootstrap.js",
            $themeFolder . "/bower_components/angular-bootstrap/ui-bootstrap-tpls.js"
        ); 
        
        Requirements::combine_files("combinedJSExternal.js", $JSFilesExternal);
        
        $JSFiles = array(
            $themeFolder . "/javascript/MidlandElectricalApp.js",
            $themeFolder . "/javascript/ChromeController.js",
            $themeFolder . "/javascript/contactFormController.js"
        );  
        
        Requirements::combine_files("combinedJS.js", $JSFiles);
        
    }

}
