<?php

/**
 * Description of NewsHolderPage
 *
 * @author Andrew Dallow
 */
class NewsHolderPage extends Page {
   private static $allowed_children = array(
        'NewsItemPage'
    );
}

class NewsHolderPage_Controller extends Page_Controller {
    //put your code here
}
