<?php

/**
 * Description of Service
 * 
 * Defines the properties of a service provided by the company.
 * 
 * @author Andrew Dallow
 */
class Service extends DataObject {

    private static $db = array(
        'Title' => 'VarChar',
        'Features' => 'HTMLText',
        'DescriptionCol1' => 'HTMLText',
        'DescriptionCol2' => 'HTMLText',
        'IconClass' => 'VarChar',
        'IconHTML' => 'HTMLText'
    );
    private static $has_one = array(
        'HomePage' => 'HomePage',
        'ServicesPage' => 'ServicesPage',
        'HeadingImage' => 'Image'
    );
    
    private static $summary_fields = array (
        'HeadingImage.CMSThumbnail' => '',
        'Title' => 'Name of Service',
    );

    public function getCMSFields() {
        return FieldList::create(array(
                    TextField::create('Title'),
                            UploadField::create('HeadingImage')
                            ->setFolderName('service-images')
                            ->setAllowedExtensions(array(
                                'png', 'gif', 'jpg', 'jpeg')),
                    TextField::create('IconClass',
                            'FontAwesome icon class name (displays on front page)'),
                    TextareaField::create('IconHTML',
                            'Full HTML code of FontAwesome Icon (displays on front page)'),
                    HtmlEditorField::create('Features',
                            'Breif list of Service Features'),
                    HtmlEditorField::create('DescriptionCol1',
                            'Column One: Long Description of Service'),
                    HtmlEditorField::create('DescriptionCol2', 
                            'Column Two: Long Description of Service')
        ));
    }

}
