<?php

/**
 * Description of Testimonial
 * 
 * Defines the properties of a customer testomonial.
 *
 * @author Andrew Dallow
 */
class Testimonial extends DataObject {

    private static $db = array(
        'CustomerName' => 'VarChar',
        'Testimonial' => 'HTMLText'
    );
    private static $has_one = array(
        'HomePage' => 'HomePage'
    );
    
    private static $summary_fields = array (
        'CustomerName' => 'Customer Name',
        'Testimonial' => 'Testimonial'
    );
    
    

    public function getCMSFields() {
        return FieldList::create(array(
                    TextField::create('CustomerName'),
                    TextareaField::create('Testimonial')
        ));
    }
}
    