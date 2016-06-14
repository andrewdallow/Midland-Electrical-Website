<?php

/**
 * Description of AboutPage
 *
 * @author Andrew Dallow
 */
class AboutPage extends Page {
    
     private static $has_one = array(
        'Photo' => 'Image'
    );
     
    private static $has_many = array(
        'PastJobs' => 'PastJob'
    );
    
    public function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.PastJobs', GridField::create(
                'PastJobs',
                'PastJob',
                $this->PastJobs(),
                GridFieldConfig_RecordEditor::create()
        ));
        
        $fields->addFieldToTab('Root.Attachments', 
                $photo = UploadField::create('Photo', 'Photo of Owner')
        );
        $photo->setFolderName('about-images');
        
        $photo->getValidator()->setAllowedExtensions(
                array('png', 'gif', 'jpg', 'jpeg')
        );
        return $fields;
    }
}

class AboutPage_Controller extends Page_Controller {
    //put your code here
}
