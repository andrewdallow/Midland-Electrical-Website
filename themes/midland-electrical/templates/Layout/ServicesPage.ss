<div class="services-section container">
        <% loop $Services %>
        <div id="{$Title}" class="service-container">
            <div class="row">
                <div class="col-md-12">
                    <h1>$Title</h1><br>
                    <img class="heading-image img-responsive" 
                         src="$HeadingImage.setWidth(1300).URL"
                         alt="$Title Heading Image">
                </div>
            </div>
            <div class="description-section">
                <div class="row">
                    <div class="col-md-6">
                        $DescriptionCol1
                    </div>
                    <div class="col-md-6">
                        $DescriptionCol2
                    </div>
                </div>
            </div>

        </div>
        <% end_loop %>
</div>
