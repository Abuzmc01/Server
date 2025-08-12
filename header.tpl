<!doctype html>
<html lang="en">
<head>
    <meta charset="{$charset}" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>
    {include file="$template/includes/head.tpl"}
    {$headoutput}

</head>
<body class="fix-header fix-sidebar card-no-border" data-phone-cc-input="{$phoneNumberInputStyle}">

    {$headeroutput}

<div id="main-wrapper">
        <header class="topbar">
            <nav class="navbar top-navbar custom-navbar navbar-expand-md navbar-light">
                <!-- ============================================================== -->
                <!-- Logo -->
                <!-- ============================================================== -->
                <div class="navbar-header">
                    
                  <a class="navbar-brand" href="{$WEB_ROOT}/index.php">
                        <!-- Logo icon --><b>
                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                            <img src="{$WEB_ROOT}/templates/hostiko-material/images/logo-icon.png" alt="homepage" class="dark-logo" />
                            
                        </b>
                      <span>
                          {if $assetLogoPath}
                          <img style="width:70%" src="{$assetLogoPath}" alt="{$companyname}" class="dark-logo">
                        {else}
                         {$companyname}
                    {/if}   
                    </span> 
                    </a>
                         
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse">
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav mr-auto mt-md-0">
                        <!-- This is  -->
                        <li class="nav-item"> <a class="nav-link nav-toggler hidden-md-up text-muted waves-effect waves-dark" href="javascript:void(0)"><i class="mdi mdi-menu"></i></a> </li>
                        <li class="nav-item m-l-10"> <a class="nav-link sidebartoggler hidden-sm-down text-muted waves-effect waves-dark" href="javascript:void(0)"><i class="ti-menu"></i></a> </li>
                        <!-- ============================================================== -->
                        <!-- Comment -->
                        <!-- ============================================================== -->
                        {if $loggedin}

                        
                         
                        <li class="nav-item dropdown">

                        <a class="nav-link dropdown-toggle text-muted text-muted waves-effect waves-dark" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
                            <i class="mdi mdi-message"></i>
                               {if count($clientAlerts) > 0}
                                <div class="notify"> <span class="heartbit"></span> <span class="point"></span> </div>
                                 {else}

                                 {/if}
                            </a>
                            <div class="dropdown-menu mailbox animated slideInUp">
                                <ul>
                                    <li>
                                        <div class="drop-title">Notifications</div>
                                    </li>


                                     {foreach $clientAlerts as $alert}
                                    <li>
                                    <div class="message-center">
                                        <a href="{$alert->getLink()}">
                                        <div class="btn btn-danger btn-circle">
                                            <i class="fa fa-{if $alert->getSeverity() == 'danger'}exclamation-circle{elseif $alert->getSeverity() == 'warning'}exclamation-triangle{elseif $alert->getSeverity() == 'info'}info-circle{else}check-circle{/if}"></i>
                                        </div>
                                        <div class="mail-contnet">
                                            <h5>Message</h5>
                                            <span class="mail-desc">{$alert->getMessage()}</span>
                                            </div>
                                        </a>
                                    </div>
                                    </li>
                                {foreachelse}
                                    <li class="none">
                                        {lang key='notificationsnone'}
                                    </li>
                                {/foreach}
                                 
                                </ul>

                            </div>
                        </li>
                        

                        <!-- ============================================================== -->
                        <!-- End Comment -->
                        <!-- ============================================================== -->
                        <!-- ============================================================== -->
                        <!-- Messages -->
                        <!-- ============================================================== -->


                        <li class="nav-item dropdown">
                            <a href="{routePath('user-accounts')}" class="nav-link dropdown-toggle text-muted waves-effect waves-dark"  data-toggle="tooltip" data-placement="bottom" title="Switch Account"> <i class="mdi mdi-account-convert"></i>
                                
                            </a>
                            
                              {if $adminMasqueradingAsClient || $adminLoggedIn}
                                        <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="btn btn-return-to-admin" data-toggle="tooltip" data-placement="bottom" title="{if $adminMasqueradingAsClient}{lang key='adminmasqueradingasclient'} {lang key='logoutandreturntoadminarea'}{else}{lang key='adminloggedin'} {lang key='returntoadminarea'}{/if}">
                                            <i class="fas fa-redo-alt"></i>
                                            <span class="d-none d-md-inline-block">{lang key="admin.returnToAdmin"}</span>
                                        </a>
                                    {/if}
                        </li>

                        <li class="nav-item dropdown">
                             <a href="cart.php?a=view" class="nav-link dropdown-toggle text-muted waves-effect waves-dark" title="Cart">
                            <i class="mdi mdi-cart-outline"></i>
                            <span class="badge badge-info">{$cartitemcount}</span>
                            <span class="sr-only">{lang key="carttitle"}</span>
                                
                            </a>
                                                       
                        </li>

                        {/if}
                        
                        <!-- ============================================================== -->
                        <!-- End Messages -->
                        <!-- ============================================================== -->
                        <!-- ============================================================== -->
                        <!-- Messages -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown mega-dropdown"> <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="mdi mdi-view-grid"></i></a>
                            <div class="dropdown-menu animated slideInUp">
                                <ul class="mega-dropdown-menu row">
                                    <li class="col-lg-3 col-xlg-2 m-b-30">
                                        <h4 class="m-b-20">CAROUSEL</h4>
                                        <!-- CAROUSEL -->
                                        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                                            <div class="carousel-inner" role="listbox">
                                                <div class="carousel-item active">
                                                    <div class="container"> <img class="d-block img-fluid" src="{$WEB_ROOT}/templates/hostiko-material/images/big/img1.jpg" alt="First slide"></div>
                                                </div>
                                                <div class="carousel-item">
                                                    <div class="container"><img class="d-block img-fluid" src="{$WEB_ROOT}/templates/hostiko-material/images/big/img2.jpg" alt="Second slide"></div>
                                                </div>
                                                <div class="carousel-item">
                                                    <div class="container"><img class="d-block img-fluid" src="{$WEB_ROOT}/templates/hostiko-material/images/big/img3.jpg" alt="Third slide"></div>
                                                </div>
                                            </div>
                                            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev"> <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="sr-only">Previous</span> </a>
                                            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next"> <span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Next</span> </a>
                                        </div>
                                        <!-- End CAROUSEL -->
                                    </li>
                                    <li class="col-lg-3 m-b-30">
                                        <h4 class="m-b-20">ACCORDION</h4>
                                        <!-- Accordian -->
                                        <div id="accordion" class="nav-accordion" role="tablist" aria-multiselectable="true">
                                            <div class="card">
                                                <div class="card-header" role="tab" id="headingOne">
                                                    <h5 class="mb-0">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                  Collapsible Group Item #1
                                                </a>
                                              </h5> </div>
                                                <div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne">
                                                    <div class="card-body"> Anim pariatur cliche reprehenderit, enim eiusmod high. </div>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-header" role="tab" id="headingTwo">
                                                    <h5 class="mb-0">
                                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                  Collapsible Group Item #2
                                                </a>
                                              </h5> </div>
                                                <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo">
                                                    <div class="card-body"> Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. </div>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-header" role="tab" id="headingThree">
                                                    <h5 class="mb-0">
                                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                  Collapsible Group Item #3
                                                </a>
                                              </h5> </div>
                                                <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree">
                                                    <div class="card-body"> Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="col-lg-3  m-b-30">
                                        <h4 class="m-b-20">CONTACT US</h4>
                                        <!-- Contact -->
                                        <form>
                                            <div class="form-group">
                                                <input type="text" class="form-control" id="exampleInputname1" placeholder="Enter Name"> </div>
                                            <div class="form-group">
                                                <input type="email" class="form-control" placeholder="Enter email"> </div>
                                            <div class="form-group">
                                                <textarea class="form-control" id="exampleTextarea" rows="3" placeholder="Message"></textarea>
                                            </div>
                                            <button type="submit" class="btn btn-info">Submit</button>
                                        </form>
                                    </li>
                                    <li class="col-lg-3 col-xlg-4 m-b-30">
                                        <h4 class="m-b-20">List style</h4>
                                        <!-- List style -->
                                        <ul class="list-style-none">
                                            <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i> You can give link</a></li>
                                            <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i> Give link</a></li>
                                            <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i> Another Give link</a></li>
                                            <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i> Forth link</a></li>
                                            <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i> Another fifth link</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <!-- ============================================================== -->
                        <!-- End Messages -->
                        <!-- ============================================================== -->
                    </ul>
                    <!-- ============================================================== -->
                    <!-- User profile and search -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav my-lg-0">
                        <!-- ============================================================== -->
                        <!-- Search -->
                        <!-- ============================================================== -->
                        <li class="nav-item hidden-sm-down search-box"> 
                        <a class="nav-link hidden-sm-down text-muted waves-effect waves-dark" href="javascript:void(0)">
                        <i class="ti-search"></i>
                        </a>
                            <form class="app-search"  method="post" action="{routePath('knowledgebase-search')}">
                                <input type="text" class="form-control"  name="search" placeholder="{lang key="searchOurKnowledgebase"}..."> <a class="srh-btn"><i class="ti-close"></i></a>     
                            </form>
          
                        </li>
                        <!-- ============================================================== -->
                        <!-- Language -->
                        <!-- ============================================================== -->
                        
                    {if $languagechangeenabled && count($locales) > 1 || $currencies}
                        
                        <li class="nav-item dropdown">


                            <a class="nav-link hidden-sm-down text-muted waves-effect waves-dark" type="button" class="btn" data-toggle="modal" data-target="#modalChooseLanguage">
                            <div class="d-inline-block align-middle">
                                <div class="iti-flag {if $activeLocale.countryCode === 'GB'}us{else}{$activeLocale.countryCode|lower}{/if}"></div>
                            </div>
                            {$activeLocale.localisedName}
                            /
                            {$activeCurrency.prefix}
                            {$activeCurrency.code}
                        </a>
                    {/if}

                        </li>


                        <!-- ============================================================== -->
                        <!-- Profile -->
                        <!-- ============================================================== -->
                        
                        
                        <li class="nav-item dropdown">
                        
                            <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <div  class="btn  btn-success btn-circle btn-lg"><i class=" fa fa-user-o"></i> </div>
                                                      
                            </a>

                            <div class="dropdown-menu dropdown-menu-right scale-up">
                                <ul class="dropdown-user">
                               {if $loggedin}
                                    <li>
                                        <div class="dw-user-box">
                                            <div  class="btn  btn-success btn-circle btn-lg"><i class=" fa fa-user-o"></i> </div>
                                            <div class="u-text">
                                            
                                                <h4>
                                                 {if $client.companyname}
                                                {$client.companyname}
                                            {else}
                                                {$client.fullName}
                                            {/if}
                                                </h4>
                                                <p class="text-muted">{$clientemail}</p>
                                                <a href="{$WEB_ROOT}/clientarea.php?action=details" class="btn btn-rounded btn-danger btn-sm">View Profile</a></div>

                                        </div>
                                    </li>
                                    <li role="separator" class="divider"></li>
                                    
                                {/if}


                                
                                

                                <li role="separator" class="divider"></li>

                                    {include file="$template/includes/navbar-material.tpl" navbar=$secondaryNavbar rightDrop=true }
                                
                                
                                </ul>
                            </div>
                        </li>
                        
                            </div>

                    </ul>
                </div>
            </nav>
        </header>

        <aside class="left-sidebar">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- User profile -->
                <div class="user-profile">
                    <!-- User profile image -->
                    <div class="profile-img text-center"> 
                    <div  class="btn  btn-success btn-circle btn-lg"><i class=" fa fa-user-o"></i> </div>
                        <!-- this is blinking heartbit-->
                        {if count($clientAlerts) > 0}
                               
                                 
                        <div class="notify setpos"> <span class="heartbit"></span> <span class="point"></span> </div>
                        {else}

                                 {/if}
                    </div>
                    <!-- User profile text-->
                    <div class="profile-text">
                        <h5>
                           {if $client.companyname}
                                                {$client.companyname}
                                            {else}
                                                {$client.fullName}
                                            {/if}
                        </h5>
                        <a href="{$WEB_ROOT}/clientarea.php?action=details" class="dropdown-toggle u-dropdown" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">
                        <i class="mdi mdi-settings"></i></a>

                        <a href="mailto:{$clientemail}" class="" data-toggle="tooltip" title="Email"><i class="mdi mdi-gmail"></i></a>

                        <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="" data-toggle="tooltip" title="Logout"><i class="mdi mdi-power"></i></a>
                        
                        
                    </div>
                </div>
                <!-- End User profile text-->
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li class="nav-devider"></li>


                    {include file="$template/includes/navbar-sidebar.tpl" navbar=$primaryNavbar}
                      
                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>
<div class="page-wrapper">
          <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-themecolor">
                    
                {foreach $breadcrumb as $item}
                        <span class="d-none{if $item@last} d-block{/if}"{if $item@last} aria-current="page"{/if}>
                        {if !$item@last}<a href="{$item.link}">{/if}
                         {$item.label}
                         {if !$item@last}</a>{/if}
                        </span>
                 {/foreach}

                    </h3>
                </div>
                <div class="col-md-7 align-self-center">
                    {include file="$template/includes/breadcrumb.tpl"}
                </div>
                <div>
 
            </div>
</div>


    {include file="$template/includes/network-issues-notifications.tpl"}

    {include file="$template/includes/verifyemail.tpl"}


    {if $templatefile == 'homepage'}
        {include file="$template/includes/client-help.tpl"}

        {if $registerdomainenabled || $transferdomainenabled}
                {include file="$template/includes/domain-search.tpl"}
        {/if}
        {include file="$template/includes/hosting-plan.tpl"}
        {include file="$template/includes/announcements.tpl"}

    {/if}


    <section id="main-body">
        <div class="{if !$skipMainBodyContainer}container-fluid{/if}">
            <div class="row">

            {if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}
                <div class="col-lg-4 col-xl-3">
                    <div class="sidebar">
                        {include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}
                    </div>
                    {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                        <div class="d-none d-lg-block sidebar">
                            {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                        </div>
                    {/if}
                </div>
            {/if}
            <div class="{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-lg-8 col-xl-9{else}col-12{/if} primary-content">
            
