<?php

/**
 * Description of ServicesPage
 *
 * @author Andrew Dallow
 */
class ServicesPage extends Page {

    private static $has_many = array(
        'Services' => 'Service'
    );
    
    public function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Services', GridField::create(
                'Services',
                'Service',
                $this->Services(),
                GridFieldConfig_RecordEditor::create()
        ));
        return $fields;
    }
    
    

}

class ServicesPage_Controller extends Page_Controller {    
}
