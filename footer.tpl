
        </div><!-- /.main-content -->
        {if !$inShoppingCart && $secondarySidebar->hasChildren()}
            <div class="col-md-3 pull-md-left sidebar">
                {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
            </div>
        {/if}
    </div>
    <div class="clearfix"></div>
</section>

<section id="footer">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <h3 class="foot-col-title"><span>Hosting</span></h3>
                <div>
                    <ul>
                        <li><a href="web-hosting.php">Web Hosting</a></li>
                        <li><a href="church-websites.php">Church Websites</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <h3 class="foot-col-title"><span>Domains</span></h3>
                <div>
                    <ul>
                        <li><a href="domainchecker.php">Register Domains</a></li>
                        <li><a href="domainchecker.php">Transfer Domains</a></li>
                        <li><a href="clientarea.php">Manage Domains</a></li>
                    </ul>
                </div>
            </div>
            <div class=" col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <h3 class="foot-col-title"><span>Contact Us</span></h3>
                <div class="customfootcontact">
                    <i class="fa fa-map-marker"></i>  P.O. Box 84<br>
                    <span class="padaddr"></span>Baldwinville, MA 01436<div class="contactbreak"></div>
                    <i class="fa fa-phone-square"></i> 866.604.3939<div class="contactbreak"></div>
                    <i class="fa fa-fax"></i> 866.895.3419<div class="contactbreak"></div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 cards-col">
                <a href="{$WEB_ROOT}/index.php"><img src="{$WEB_ROOT}/templates/{$template}/img/logo.png" alt="{$companyname}" /></a>
                <div class="foot-cards">
                    <img src="{$WEB_ROOT}/templates/{$template}/img/cards-icon.png" alt="Accepted Credit Cards" />
                </div>
            </div>
        </div>
        <p>Copyright &copy; {$date_year} {$companyname}. All Rights Reserved.</p>
    </div>
</section>

<div class="modal system-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content panel panel-primary">
            <div class="modal-header panel-heading">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span>
                    <span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title">Title</h4>
            </div>
            <div class="modal-body panel-body">
                Loading...
            </div>
            <div class="modal-footer panel-footer">
                <div class="pull-left loader">
                    <i class="fa fa-circle-o-notch fa-spin"></i> Loading...
                </div>
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    Close
                </button>
                <button type="button" class="btn btn-primary modal-submit">
                    Submit
                </button>
            </div>
        </div>
    </div>
</div>

{$footeroutput}

</body>
</html>
