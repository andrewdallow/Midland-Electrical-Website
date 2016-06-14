<?php

/**
 * Description of NewsItemPage
 *
 * @author Andrew Dallow
 */
class NewsItemPage extends Page {

    private static $can_be_root = false;
    private static $db = array(
        'SubTitle' => 'VarChar',
        'Summary' => 'VarChar'
    );
    
    private static $has_one = array(
        'ArticleHeaderImage' => 'Image'
    );
    
    public function getCMSFields() {
        $fields = parent::getCMSFields();
        
        $fields->addFieldToTab('Root.Main',
                TextField::create('SubTitle'),
                'Content');
        
        $fields->addFieldToTab('Root.Main',
                TextareaField::create('Summary', 'Summary (Optional)'),
                'Content');

        $fields->addFieldToTab('Root.Attachments', 
                $photo = UploadField::create('ArticleHeaderImage')
        );
        $photo->getValidator()->setAllowedExtensions(
                array('png', 'gif', 'jpg', 'jpeg')
        );
        return $fields;
    }

}

class NewsItemPage_Controller extends Page_Controller {
    //put your code here
}
