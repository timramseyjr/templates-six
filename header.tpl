<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="{$charset}" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>

    {include file="$template/includes/head.tpl"}

    {$headoutput}

</head>
<body>

{$headeroutput}

<section id="header">
    <div class="container">

        <!-- Top Bar -->
        <div id="top-nav">
            <!-- Language -->
            {if $languagechangeenabled && count($locales) > 1}
                <div class="pull-right nav">
                    <a href="#" class="quick-nav" data-toggle="popover" id="languageChooser"><i class="fa fa-language"></i> {$LANG.chooselanguage} <span class="caret"></span></a>
                    <div id="languageChooserContent" class="hidden">
                        <ul>
                            {foreach from=$locales item=locale}
                                <li><a href="{$currentpagelinkback}language={$locale.language}">{$locale.localisedName}</a></li>
                            {/foreach}
                        </ul>
                    </div>
                </div>
            {/if}
            <!-- Login/Account Notifications -->
            {if $loggedin}
                <div class="pull-right nav">
                    <a href="#" class="quick-nav" data-toggle="popover" id="accountNotifications" data-placement="bottom" title="{lang key="notifications"}"><i class="fa fa-info"></i> {$LANG.notifications} ({$clientAlerts|count})</a>
                    <div id="accountNotificationsContent" class="hidden">
                        {foreach $clientAlerts as $alert}
                            <div class="clientalert text-{$alert->getSeverity()}">{$alert->getMessage()}{if $alert->getLinkText()} <a href="{$alert->getLink()}" class="btn btn-xs btn-{$alert->getSeverity()}">{$alert->getLinkText()}</a>{/if}</div>
                        {foreachelse}
                            <div class="clientalert text-success"><i class="fa fa-check-square-o"></i> {$LANG.notificationsnone}</div>
                        {/foreach}
                    </div>
                </div>
            {else}
                <div class="pull-right nav">
                    <a href="#" class="quick-nav" data-toggle="popover" id="loginOrRegister" data-placement="bottom"><i class="fa fa-user"></i> {$LANG.login}</a>
                    <div id="loginOrRegisterContent" class="hidden">
                        <form action="{if $systemsslurl}{$systemsslurl}{else}{$systemurl}{/if}dologin.php" method="post" role="form">
                            <div class="form-group">
                                <input type="email" name="username" class="form-control" placeholder="{$LANG.clientareaemail}" required />
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <input type="password" name="password" class="form-control" placeholder="{$LANG.loginpassword}" autocomplete="off" required />
                                    <span class="input-group-btn">
                                        <input type="submit" class="btn btn-primary" value="{$LANG.login}" />
                                    </span>
                                </div>
                            </div>
                            <label class="checkbox-inline">
                                <input type="checkbox" name="rememberme" /> {$LANG.loginrememberme} &bull; <a href="{$WEB_ROOT}/pwreset.php">{$LANG.forgotpw}</a>
                            </label>
                        </form>
                        {if $condlinks.allowClientRegistration}
                            <hr />
                            {$LANG.newcustomersignup|sprintf2:"<a href=\"$WEB_ROOT/register.php\">":"</a>"}
                        {/if}
                    </div>
                </div>
            {/if}
            <!-- Shopping Cart -->
            <div class="pull-right nav">
                <a href="{$WEB_ROOT}/cart.php?a=view" class="quick-nav"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs">{$LANG.viewcart} (</span><span id="cartItemCount">{$cartitemcount}</span><span class="hidden-xs">)</span></a>
            </div>

            {if $adminMasqueradingAsClient}
                <!-- Return to admin link -->
                <div class="alert alert-danger admin-masquerade-notice">
                    {$LANG.adminmasqueradingasclient}<br />
                    <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="alert-link">{$LANG.logoutandreturntoadminarea}</a>
                </div>
            {elseif $adminLoggedIn}
                <!-- Return to admin link -->
                <div class="alert alert-danger admin-masquerade-notice">
                    {$LANG.adminloggedin}<br />
                    <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="alert-link">{$LANG.returntoadminarea}</a>
                </div>
            {/if}

        </div>

        <a href="{$WEB_ROOT}/index.php"><img src="{$WEB_ROOT}/templates/{$template}/img/logo.png" alt="{$companyname}" /></a>

    </div>
</section>

<section id="main-menu">

    <nav id="nav" class="navbar navbar-default navbar-main" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                <ul class="nav navbar-nav">

                    {include file="$template/includes/navbar.tpl" navbar=$primaryNavbar}

                </ul>

                <ul class="nav navbar-nav navbar-right">

                    {include file="$template/includes/navbar.tpl" navbar=$secondaryNavbar}

                </ul>

            </div><!-- /.navbar-collapse -->
        </div>
    </nav>

</section>

{if $templatefile == 'homepage'}
    <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="7000">
        <div class="carousel-inner" role="listbox">
            <div class="item">
                <img src="{$WEB_ROOT}/templates/{$template}/img/servers.jpg" alt="Server Cluster" class="img-responsive">
                <div class="container">
                    <div class="carousel-caption">
                        <h2>Web Hosting You Can Trust!</h2>
                        <p>With 99.9% uptime, and USA based server management, you can be rest assured you will get only the best service.  Free site transfers for all new clients - let us show you the True Light Difference!</p>
                    </div>
                </div>
            </div>
            <div class="item active">
                <img src="{$WEB_ROOT}/templates/{$template}/img/hostingsmallbusiness.jpg" alt="Small Business Web Hosting" class="img-responsive">
                <div class="container">
                    <div class="carousel-caption">
                        <h3>Small Business Web Hosting</h3>
                        <p>We offer Web Hosting and Web Developement for Business of all sizes.  Contact us and we will match the services you need for your business.</p>
                    </div>
                </div>
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <section id="home-banner">
        <div class="container text-center">
            {if $registerdomainenabled || $transferdomainenabled}
                <h2>{$LANG.homebegin}</h2>
                <form method="post" action="domainchecker.php">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1">
                            <div class="input-group input-group-lg">
                                <input type="text" class="form-control" name="domain" placeholder="{$LANG.exampledomain}" autocapitalize="none" />
                                <span class="input-group-btn">
                                    {if $registerdomainenabled}
                                        <input type="submit" class="btn btn-warning" value="{$LANG.search}" />
                                    {/if}
                                    {if $transferdomainenabled}
                                        <input type="submit" name="transfer" class="btn btn-info" value="{$LANG.domainstransfer}" />
                                    {/if}
                                </span>
                            </div>
                        </div>
                    </div>

                    {include file="$template/includes/captcha.tpl"}
                </form>
            {else}
                <h2>{$LANG.doToday}</h2>
            {/if}
        </div>
    </section>
    <div class="container whyhome">
        <div class="row">
            <div class="col-sm-12">
                <h1 class="article-title" itemprop="name">Why Choose True Light Web?</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-9 pad-bottom-10-768">
                <h2>Great Customer Service</h2>
                First, we listen to you. We have learned how important it is to engage into a project with clear communication with our clients. This is the most important step enabling us to learn our client's business position, needs &amp; problems. Once we have a clear idea of your unique needs, we can serve you the best.
            </div>
            <div class="col-sm-3">
                <img title="Customer Serving" src="{$WEB_ROOT}/templates/{$template}/img/supportive650.jpg" alt="Customer Serving">
            </div>
            <div class="clearfix">&nbsp;</div>
            <div class="col-sm-9 pull-right">
                <h2>Free Migration Transfers</h2>
                Our packages come with a Migration service that can move all of your account data over to True Light Web. We can also transfer your Domain if you migrate to have all of your services under one roof.
            </div>
            <div class="col-sm-3">
                <img title="Free Sever Migration" src="{$WEB_ROOT}/templates/{$template}/img/migrate650.jpg" alt="Free Sever Migration">
            </div>
            <div class="clearfix">&nbsp;</div>
            <div class="col-sm-9 pad-bottom-10-768">
                <h2>One Click Installs</h2>
                We deploy Softaculous on our servers which mean easy one-click installs of many of your favorite software. Click the "install" button from your hosting account to get the ball rolling quickly.
            </div>
            <div class="col-sm-3">
                <img title="Easy Softaculous 1 Click Installs" src="{$WEB_ROOT}/templates/{$template}/img/oneclickinstall650.jpg" alt="Easy Softaculous 1 Click Installs">
            </div>
            <div class="clearfix">&nbsp;</div>
            <div class="col-sm-9 pull-right pad-bottom-10-768">
                <h2>Located in USA</h2>
                All of our servers and support staff are located right here in the USA. You can be rest assured that you will receive prompt response from someone you can undeestand.
            </div>
            <div class="col-sm-3">
                <img title="In the USA" src="{$WEB_ROOT}/templates/{$template}/img/made-in-usa650.jpg" alt="In the USA">
            </div>
        </div>
    </div>
{/if}

{include file="$template/includes/verifyemail.tpl"}

<section id="main-body" class="container">

    <div class="row">
        {if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}
            {if $primarySidebar->hasChildren()}
                <div class="col-md-9 pull-md-right">
                    {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
                </div>
            {/if}
            <div class="col-md-3 pull-md-left sidebar">
                {include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}
            </div>
        {/if}
        <!-- Container for main page display content -->
        <div class="{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-md-9 pull-md-right{else}col-xs-12{/if} main-content">
            {if !$primarySidebar->hasChildren() && !$showingLoginPage && !$inShoppingCart && $templatefile != 'homepage'}
                {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
            {/if}
