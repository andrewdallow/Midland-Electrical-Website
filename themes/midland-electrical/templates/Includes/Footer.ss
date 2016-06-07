<div class="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-12 contact-info"> 
                <div class="row">
                    <% if $SiteConfig.ContactName %>
                    <div class="col-md-2 footer-contact-name">                
                        $SiteConfig.ContactName                
                    </div>
                    <% end_if %>
                    <% if $SiteConfig.PostalAddress %>
                    <div class="col-md-4 footer-contact-address">
                        <i class="fa fa-map-marker"></i>
                        $SiteConfig.PostalAddress, $SiteConfig.PostalCity, 
                        $SiteConfig.PostalRegion<% if $SiteConfig.PostalCode %>
                        $SiteConfig.PostalCode<% end_if %>
                    </div>
                    <% end_if %>
                    <% if $SiteConfig.PhoneContact || $SiteConfig.MobileContact %>
                    <div class="col-md-3 footer-contact-phone">
                        <% if $SiteConfig.PhoneContact %>
                        <i class="fa fa-phone"></i>
                        <span ng-bind="phoneFormat({$SiteConfig.PhoneContact})">
                        </span>
                        <% end_if %>
                        <% if $SiteConfig.MobileContact %>
                        <i class="fa fa-mobile"></i>
                        <span ng-bind="mobileFormat($SiteConfig.MobileContact)">
                        </span>
                        <% end_if %>
                    </div>
                    <% end_if %>
                    <% if $SiteConfig.EmailContact %>
                    <div class="col-md-3 footer-contact-email">
                        <i class="fa fa-envelope"></i>
                        <a href="mailto:{$SiteConfig.EmailContact}">
                            $SiteConfig.EmailContact
                        </a>
                    </div>
                    <% end_if %>
                </div>
            </div>
        </div>
        <div class="row footer-bottom">
            <div class="col-md-12">
                &copy; <span ng-bind="copywriteYear"></span> $SiteConfig.Title |  
                    <span class="sitemap">
                        <a href="{$AbsolutePath}sitemap.xml">Sitemap</a>
                    </span>  | 
                    <a href="{$AbsolutePath}admin">Login</a>  | 
                    Created by 
                    <a href="https://cosmicwebdesigns.nz/">
                        Cosmic Web Designs
                    </a>
            </div> 
        </div>
    </div>
</div>
