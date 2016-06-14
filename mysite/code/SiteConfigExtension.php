<?php

/**
 * Description of SiteConfigExtension
 *
 * @author Andrew Dallow
 */
class SiteConfigExtension extends DataExtension {

    private static $db = array(
        'ContactName' => 'Varchar',
        'EmailContact' => 'Varchar',
        'PhoneContact' => 'Varchar',
        'MobileContact' => 'Varchar',
        'PostalAddress' => 'Varchar',
        'PostalCity' => 'Varchar',
        'PostalCode' => 'Varchar',
        'PostalRegion' => 'Varchar',
        'PostalCountry' => 'Varchar',
        'PhysicalAddress' => 'Varchar',
        'PhysicalCity' => 'Varchar',
        'PhysicalRegion' => 'Varchar',
        'PhysicalCountry' => 'Varchar',
        'FacebookLink' => 'Text',
        'TwitterLink' => 'Text',
        'GoogleLink' => 'Text',
        'YouTubeLink' => 'Text'
    );
    private static $has_one = array(
        'Logo' => 'Image'
    );
    

    public function updateCMSFields(FieldList $fields) {
        
        $fields->addFieldsToTab('Root.ContactDetails', array(
            TextField::create('ContactName', 'Full Name'),
            EmailField::create('EmailContact', 'Email Address'),
            FieldGroup::create(
                    PhoneNumberField::create('PhoneContact', 'Telephone Number'),
                    PhoneNumberField::create('MobileContact', 'Mobile Number')
            )->setTitle('Telephone Numbers'),
            
            FieldGroup::create(
                    TextField::create('PostalAddress', 'Address'),
                    TextField::create('PostalCity', 'City'),
                    TextField::create('PostalRegion', 'Region'),
                    TextField::create('PostalCode', 'Postcode'),
                    CountryDropdownField::create('PostalCountry', 'Country')
            )->setTitle('Postal Address'),
            FieldGroup::create(
                    TextField::create('PhysicalAddress', 'Address'),
                    TextField::create('PhysicalCity', 'City'),
                    TextField::create('PhysicalRegion', 'Region'),
                    CountryDropdownField::create('PhysicalCountry', 'Country')
            )->setTitle('Physical Address')
        ));
        
        $fields->addFieldsToTab('Root.Social', array(
            TextField::create('FacebookLink', 'Facebook'),
            TextField::create('TwitterLink', 'Twitter'),
            TextField::create('GoogleLink', 'Google'),
            TextField::create('YouTubeLink', 'YouTube')
        ));

        $fields->addFieldsToTab('Root.Main', array(
            $logo= UploadField::create('Logo')
        ));

        $logo->setFolderName('banner-images')
                ->getValidator()->setAllowedExtensions(
                array('png', 'gif', 'jpg', 'jpeg')
        );

        
    }

}
