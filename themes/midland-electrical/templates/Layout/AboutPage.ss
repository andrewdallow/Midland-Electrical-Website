<div class="about-section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1>$Title</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <img class="headshot img-responsive" 
                     src="$Photo.setHeight(500).URL" alt="Headshot Image">
            </div>
            <div class="col-md-8">
                $Content
            </div>
        </div>
        <div class="past-jobs">
            <div class="row">
                <div class="col-md-4">
                    <h2>Past Jobs</h2>
                </div>
            </div>
            <div class="past-job-item">
                <div class="row">
                    <% loop $PastJobs %>
                    <div class="col-md-4">
                        <div class="row">
                            <div class="col-md-12">
                                <img class="img-responsive" 
                                     src="$Photo.setHeight(200).URL" 
                                     alt="$Title Image">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <h5>$Title</h5>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                $Description
                            </div>
                        </div>
                    </div>
                    <% end_loop %>
                </div>
            </div>
        </div>
    </div>

</div>
