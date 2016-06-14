<?php

/**
 * Description of PastJobs
 *
 * @author Andrew Dallow
 */
class PastJob extends DataObject {
    private static $db = array(
        'Title' => 'VarChar',
        'Description' => 'HTMLText'
    );
    
    private static $has_one = array(
        'Photo' => 'Image',
        'AboutPage' => 'AboutPage'
        
    );
    
     
     private static $summary_fields = array (
        'Photo.CMSThumbnail' => '',
        'Title' => 'Job Title',
    );
     
     public function getCMSFields() {
        return FieldList::create(array(
                    TextField::create('Title'),
                    UploadField::create('Photo')
                            ->setFolderName('about-images')
                            ->setAllowedExtensions(array(
                                'png', 'gif', 'jpg', 'jpeg')),
                    HtmlEditorField::create('Description',
                            'Breif Description of Job')
        ));
     }
}
