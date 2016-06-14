<div class="contact-section" ng-controller="contactFormController">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <img class="banner-image img-responsive" 
                     src="{$BannerImage.URL}" alt="Contact Heading Image">
            </div>
            <div class="row">
                <div class="col-md-12 contact-heading">
                    <h1>Contacting $SiteConfig.Title</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 contact-description">
                    $Content
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 contact-details">
                    <div class="row">
                        <div class="col-md-12">
                            <h2>Contact Details</h2>
                        </div>
                    </div>
                    <% if $SiteConfig.PostalAddress %>
                    <div class="row">
                        <div class="col-md-12 contact-address">
                            <h4>Address</h4>
                            <address>
                                $SiteConfig.Title<br>
                                $SiteConfig.PostalAddress<br>
                                $SiteConfig.PostalCity<br>
                                $SiteConfig.PostalRegion<% if $SiteConfig.PostalCode %><br>
                                $SiteConfig.PostalCode<% end_if %>
                            </address>
                            <hr>
                        </div>
                    </div>
                    <% end_if %>
                    <% if $SiteConfig.PhoneContact || $SiteConfig.MobileContact %>
                    <div class="row">
                        <div ng-controller="ChromeController" class="col-md-12 contact-numbers">
                            <h4>Phone</h4>
                            <% if $SiteConfig.PhoneContact %>
                            <i class="fa fa-phone"></i><span ng-bind="phoneFormat({$SiteConfig.PhoneContact})">
                            </span>
                            <% end_if %>
                            <% if $SiteConfig.MobileContact %>
                            <br><i class="fa fa-mobile"></i>
                            <span ng-bind="mobileFormat($SiteConfig.MobileContact)">
                                <% end_if %>
                            </span>
                            <hr>
                        </div>
                    </div>
                    <% end_if %>
                    <% if $SiteConfig.EmailContact %>
                    <div class="row">
                        <div ng-controller="ChromeController" class="col-md-12 contact-email">
                            <h4>Email</h4>
                            <i class="fa fa-envelope"></i>
                            <a href="mailto:{$SiteConfig.EmailContact}">
                                $SiteConfig.EmailContact
                            </a>
                        </div>
                    </div>
                    <% end_if %>
                </div>
                <div class="col-md-6 contact-form">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <form class="contactForm"
                                  name="form"
                                  ng-submit="sendMessage(input)">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h2>Send us a message</h2>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">

                                            <label for="name" class="control-label">
                                                Full Name *                                         
                                            </label>
                                            <input type="text" class="form-control" 
                                                   id="name" name="name" 
                                                   ng-model="input.name"                                           
                                                   required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">

                                            <label for="email" class="control-label">
                                                Email *
                                                <span class="form-hint">
                                                    example@email.com
                                                </span>
                                            </label>
                                            <input type="email" class="form-control" 
                                                   id="email" name="email" 
                                                   ng-model="input.email" 
                                                   required>
                                        </div>
                                    </div> 
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">

                                            <label for="phone" class="control-label">
                                                Phone                                         
                                            </label>
                                            <input type="tel" class="form-control" 
                                                   id="phone" name="phone" 
                                                   ng-model="input.phone"                                           
                                                   >
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label for="message" class="control-label">
                                                Write your message here *
                                            </label>
                                            <textarea class="form-control" 
                                                      rows="5" 
                                                      id="message"
                                                      name="message"
                                                      ng-model="input.message" 
                                                      required></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <p class="bg-success" ng-show="success">
                                            Your message has been received. You will get
                                            a response within 1 - 2 business days.</p>
                                        <p class="bg-danger" ng-show="error">Something 
                                            went wrong!, please try again.</p>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12">
                                        <button id="submit" 
                                                name="submit" 
                                                type="submit"
                                                class="btn btn-primary btn-block"
                                                ng-disabled="disableSendButton">
                                            <i class="fa fa-spinner fa-pulse" 
                                               ng-show="showSpinner"></i>
                                            Send

                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <% if $SiteConfig.PhysicalAddress %>        
        <div class="row">
            <div class="col-sm-12 google-maps">
                <iframe
                    width="1170"
                    height="500"
                    frameborder="0" style="border:0"
                    src="https://www.google.com/maps/embed/v1/place?key=AIzaSyALgk7RVWNswDkhS5bHposP71bSy3rYDSM
                    &q={$SiteConfig.PhysicalAddress}, 
                    {$SiteConfig.PhysicalCity}, {$SiteConfig.PhysicalRegion}, 
                    {$SiteConfig.PhysicalCountry}" allowfullscreen async defer>
                </iframe>
            </div>
        </div>         
        <% end_if %>
    </div>
</div>
