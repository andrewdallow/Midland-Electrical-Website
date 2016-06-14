<?php

/**
 * Description of HomePage
 *
 * @author Andrew Dallow
 */
class HomePage extends Page {
    
    private static $has_one = array(
        'BannerImage' => 'Image'
    );
    
    private static $has_many = array(
        'Testimonials' => 'Testimonial'
    );
    
    public function getCMSFields() {
        $fields = parent::getCMSFields();
        
        $fields->addFieldToTab('Root.Attachments', 
                $photo = UploadField::create('BannerImage')
        );
        $photo->setFolderName('banner-images');
        
        $photo->getValidator()->setAllowedExtensions(
                array('png', 'gif', 'jpg', 'jpeg')
        );
        
        $fields->addFieldToTab('Root.Testimonials', GridField::create(
                'Testimonials',
                'Testimonial',
                $this->Testimonials(),
                GridFieldConfig_RecordEditor::create()
        ));
        
        return $fields;
    }

}

class HomePage_Controller extends Page_Controller {
    private static $allowed_actions = array('testimonials');
    
    public function getServices($count = 3) {
        return Service::get()
                ->sort('Created', 'ASC')
                ->limit($count);
    }
    
    
    public function testimonials(SS_HTTPRequest $request) {
        $response = [];
        $testimonials = Testimonial::get()->limit(5);
        
        foreach ($testimonials as $testimonial) {
            array_push($response, array(
                'CustomerName' => $testimonial->CustomerName,
                'Testimonial' => $testimonial->Testimonial
            ));
        }
        $this->response->addHeader('Content-Type', 'application/json');
        return json_encode($response);
    }
    
}
