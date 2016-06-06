<?php

/**
 * Decorate the page object to provide google sitemaps with 
 * additionally options and configuration.
 * 
 * @package googlesitemaps
 */
class GoogleSitemapExtension extends DataExtension
{

    /**
     * @return boolean
     */
    public function canIncludeInGoogleSitemap()
    {
        $can = true;

        if ($this->owner->hasMethod('AbsoluteLink')) {
            $hostHttp = parse_url(Director::protocolAndHost(), PHP_URL_HOST);
            $objHttp = parse_url($this->owner->AbsoluteLink(), PHP_URL_HOST);

            if ($objHttp != $hostHttp) {
                $can = false;
            }
        }
        
        if ($can) {
            $can = $this->owner->canView();
        }

        if ($can) {
            $can = $this->owner->getGooglePriority();
        }

        // Allow override. In this case, since this can return multiple results, we'll use an "and" based policy. That is
        // if any value is false then the current value will be false. Only only if all are true will we then return true.
        $override = $this->owner->invokeWithExtensions('alterCanIncludeInGoogleSitemap', $can);
        if ($override) {
            $can = min($override);
        }


        return $can;
    }


    /**
     * @return void
     */
    public function onAfterPublish()
    {
        GoogleSitemap::ping();
    }

    /**
     * @return void
     */
    public function onAfterUnpublish()
    {
        GoogleSitemap::ping();
    }


    /**
     * The default value of the priority field depends on the depth of the page in
     * the site tree, so it must be calculated dynamically.
     *
     * @return mixed
     */
    public function getGooglePriority()
    {
        $field = $this->owner->hasField('Priority');

        if (isset($this->Priority) || ($field && $this->Priority = $this->owner->getField('Priority'))) {
            return ($this->Priority < 0) ? false : $this->Priority;
        }

        return GoogleSitemap::get_priority_for_class($this->owner->class);
    }

    /**
     * Returns a pages change frequency calculated by pages age and number of 
     * versions. Google expects always, hourly, daily, weekly, monthly, yearly 
     * or never as values.
     * 
     * @see http://support.google.com/webmasters/bin/answer.py?hl=en&answer=183668&topic=8476&ctx=topic
     *
     * @return SS_Datetime
     */
    public function getChangeFrequency()
    {
        if ($freq = GoogleSitemap::get_frequency_for_class($this->owner->class)) {
            return $freq;
        }

        $date = date('Y-m-d H:i:s');

        $created = new SS_Datetime();
        $created->value = ($this->owner->Created) ? $this->owner->Created : $date;

        $now = new SS_Datetime();
        $now->value = $date;
        
        $versions = ($this->owner->Version) ? $this->owner->Version : 1;
        $timediff = $now->format('U') - $created->format('U');

        // Check how many revisions have been made over the lifetime of the
        // Page for a rough estimate of it's changing frequency.
        $period = $timediff / ($versions + 1);

        if ($period > 60 * 60 * 24 * 365) {
            $freq = 'yearly';
        } elseif ($period > 60 * 60 * 24 * 30) {
            $freq = 'monthly';
        } elseif ($period > 60 * 60 * 24 * 7) {
            $freq = 'weekly';
        } elseif ($period > 60 * 60 * 24) {
            $freq = 'daily';
        } elseif ($period > 60 * 60) {
            $freq = 'hourly';
        } else {
            $freq = 'always';
        }

        return $freq;
    }
}
