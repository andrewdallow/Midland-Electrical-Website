<div class="home-section">
    <div class="banner-intro">
        <div class="row">
            <div class="col-md-12">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 banner-image"> 
                            <img class="img-responsive img-rounded" 
                                 src="{$BannerImage.setWidth(1200).URL}" 
                                 alt="Banner Image">                          

                        </div>
                    </div>   
                    <div class="row">
                        <div class="col-md-12 intro-text">
                            $Content
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="services-basic">
        <div class="container">
            <div class="row">
                <% loop getServices() %>
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="icon">
                                        <% if $IconClass %>
                                        <i class="fa $IconClass"></i>
                                        <% else_if $IconHTML %>
                                        $IconHTML
                                        <% end_if %>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <h3>$Title</h3>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    $Features
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-offset-2 col-xs-8 btn-read-more">
                                    <a href="{$AbsoluteBaseURL}services#{$Title}" 
                                       role="button" 
                                       class="btn btn-default btn-lg btn-block">
                                        Read More</a>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <% end_loop %>
            </div>
        </div>
    </div>    
    <div class="testimonial-section" ng-controller="TestimonialCarouselCtrl" ng-show="showTestimonials">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="carousel" >
                        <uib-carousel active="active" interval="myInterval" no-wrap="noWrapSlides">
                            <uib-slide ng-repeat="slide in slides track by slide.id" index="slide.id">
                                <div class="row">
                                    <div class="col-xs-12">
                                        <i class="fa fa-quote-left"></i>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-offset-2 col-xs-8">
                                        <blockquote><p>{{ slide.testimonial}}</p></blockquote>
                                        
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-offset-2 col-xs-8 cutomer-name">
                                        - {{ slide.name }}
                                    </div>
                                </div> 
                            </uib-slide>
                        </uib-carousel>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
