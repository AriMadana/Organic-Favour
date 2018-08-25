<!DOCTYPE html>
<html lang="en"><head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- End Required meta tags -->
    <!-- Begin SEO tag -->
    <title> Messages | Looper - Bootstrap 4 Admin Theme </title>
    <meta property="og:title" content="Messages">
    <meta name="author" content="Beni Arisandi">
    <meta property="og:locale" content="en_US">
    <meta name="description" content="Responsive admin theme build on top of Bootstrap 4">
    <meta property="og:description" content="Responsive admin theme build on top of Bootstrap 4">
    <link rel="canonical" href="//uselooper.com">
    <meta property="og:url" content="//uselooper.com">
    <meta property="og:site_name" content="Looper - Bootstrap 4 Admin Theme">
    <script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script type="application/ld+json">
      {
        "name": "Looper - Bootstrap 4 Admin Theme",
        "description": "Responsive admin theme build on top of Bootstrap 4",
        "author":
        {
          "@type": "Person",
          "name": "Beni Arisandi"
        },
        "@type": "WebSite",
        "url": "",
        "headline": "Messages",
        "@context": "http://schema.org"
      }
    </script>
    <!-- End SEO tag -->
    <!-- FAVICONS -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath}/assets/assets/apple-touch-icon.png">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/assets/favicon.ico">
    <meta name="theme-color" content="#3063A0">
    <!-- End FAVICONS -->
    <script src="${pageContext.request.contextPath}/assets/assets/vendor/pace/pace.min.js"></script>
    <!-- BEGIN BASE STYLES -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/assets/vendor/pace/pace.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/assets/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/assets/vendor/open-iconic/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/assets/vendor/font-awesome/css/fontawesome-all.min.css">
    <!-- END BASE STYLES -->
    <!-- BEGIN THEME STYLES -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/assets/stylesheets/main.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/assets/stylesheets/custom.css">
    <!-- END THEME STYLES -->
</head>
<body class="  pace-done"><div class="pace  pace-inactive"><div class="pace-progress" data-progress-text="100%" data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
    <div class="pace-progress-inner"></div>
</div>
    <div class="pace-activity"></div></div>
<!-- .app -->
<div class="app">
    <!-- .app-header -->

    <!-- /.app-header -->
    <!-- .app-aside -->

    <!-- /.app-aside -->
    <!-- .app-main -->
    <main class="app-main" style="padding:0;">
        <!-- .wrapper -->
        <div class="wrapper">
            <!-- .page -->
            <div class="page"><div class="sidebar-backdrop"></div>
                <!-- .page-navs -->
                <nav class="page-navs bg-white">
                    <!-- .nav-scroller -->
                    <div class="nav-scroller">
                        <!-- .nav -->
                        <div class="nav nav-tabs">
                            <a class="nav-link active show" data-toggle="tab" href="#tab1">All
                                <span class="badge">(7)</span>
                            </a>
                            <a class="nav-link" data-toggle="tab" href="#tab2">Starred</a>
                            <a class="nav-link" data-toggle="tab" href="#tab3">Trash</a>
                        </div>
                        <!-- /.nav -->
                    </div>
                    <!-- /.nav-scroller -->
                </nav>
                <!-- /.page-navs -->
                <!-- .page-inner -->
                <div class="page-inner">
                    <!-- .page-title-bar -->
                    <header class="page-title-bar">
                        <div class="d-flex justify-content-between">
                            <div class="d-md-inline-block">
                                <!-- .input-group -->
                                <div class="input-group input-group-alt">
                                    <!-- .input-group -->
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                          <span class="input-group-text">
                            <span class="oi oi-magnifying-glass"></span>
                          </span>
                                        </div>
                                        <input type="text" class="form-control" placeholder="Search message"> </div>
                                    <!-- /.input-group -->
                                    <!-- .input-group-append -->
                                    <div class="input-group-append">
                                        <select class="custom-select">
                                            <option selected=""> Filter By </option>
                                            <option value="1"> Team </option>
                                            <option value="3"> Project </option>
                                            <option value="2"> People </option>
                                        </select>
                                    </div>
                                    <!-- /.input-group-append -->
                                </div>
                                <!-- /.input-group -->
                            </div>
                            <button type="button" class="btn btn-success d-none d-sm-inline-block">New Message</button>
                        </div>
                        <button type="button" class="btn btn-success btn-floated d-block d-sm-none">
                            <span class="fa fa-plus"></span>
                        </button>
                    </header>
                    <!-- /.page-title-bar -->
                    <!-- .page-section -->
                    <div class="page-section">
                        <!-- .card -->
                        <section class="card">
                            <!-- .list-group-messages -->
                            <div class="list-group list-group-messages list-group-flush list-group-bordered">
                                <!-- message item -->
                                <div class="list-group-item unread">
                                    <!-- message figure -->
                                    <div class="list-group-item-figure">
                        <span class="rating rating-sm mr-3">
                          <input type="checkbox" id="star1" value="1">
                          <label for="star1">
                            <span class="fa fa-star"></span>
                          </label>
                        </span>
                                        <!-- .avatar -->
                                        <div class="avatar has-badge">
                                            <a href="app-conversations.html" class="user-avatar">
                                                <img src="${pageContext.request.contextPath}/assets/assets/images/avatars/team2.png" alt="">
                                            </a>
                                            <span class="tile tile-xs tile-circle bg-red">2</span>
                                        </div>
                                        <!-- /.avatar -->
                                    </div>
                                    <!-- /message figure -->
                                    <!-- message body -->
                                    <div class="list-group-item-body pl-md-2">
                                        <!-- grid row -->
                                        <div class="row">
                                            <!-- grid column -->
                                            <div class="col-12 col-lg-3 d-none d-lg-block">
                                                <h4 class="list-group-item-title text-truncate">
                                                    <a href="app-conversations.html">Creative Division</a>
                                                </h4>
                                                <p class="list-group-item-text"> 12 members </p>
                                            </div>
                                            <!-- /grid column -->
                                            <!-- grid column -->
                                            <div class="col-12 col-lg-7">
                                                <h4 class="list-group-item-title text-truncate">
                                                    <a href="app-conversations.html">Our trip to Montreal</a>
                                                </h4>
                                                <p class="list-group-item-text text-truncate"> Hi Guys, minus, aliquam porro repudiandae numquam. Molestias. </p>
                                            </div>
                                            <!-- /grid column -->
                                            <!-- grid column -->
                                            <div class="col-12 col-lg-2 text-lg-right">
                                                <p class="list-group-item-text"> 16 minutes ago </p>
                                            </div>
                                            <!-- /grid column -->
                                        </div>
                                        <!-- /grid row -->
                                    </div>
                                    <!-- /message body -->
                                    <!-- message actions -->
                                    <div class="list-group-item-figure">
                                        <!-- .dropdown -->
                                        <div class="dropdown">
                                            <button class="btn btn-reset px-2" data-toggle="dropdown">
                                                <i class="fa fa-ellipsis-v"></i>
                                            </button>
                                            <div class="dropdown-arrow"></div>
                                            <!-- .dropdown-menu -->
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a href="#" class="dropdown-item">Mark as read</a>
                                                <a href="#" class="dropdown-item">Mark as unread</a>
                                                <a href="#" class="dropdown-item">Toggle star</a>
                                                <a href="#" class="dropdown-item">Trash</a>
                                            </div>
                                            <!-- /.dropdown-menu -->
                                        </div>
                                        <!-- /.dropdown -->
                                    </div>
                                    <!-- /message actions -->
                                </div>
                                <!-- /message item -->
                                <!-- message item -->
                                <div class="list-group-item unread">
                                    <!-- message figure -->
                                    <div class="list-group-item-figure">
                        <span class="rating rating-sm mr-3">
                          <input type="checkbox" id="star2" value="1">
                          <label for="star2">
                            <span class="fa fa-star"></span>
                          </label>
                        </span>
                                        <!-- .avatar -->
                                        <div class="avatar has-badge">
                                            <a href="app-conversations.html" class="tile tile-circle bg-teal">GD</a>
                                            <span class="tile tile-xs tile-circle bg-red">1</span>
                                        </div>
                                        <!-- /.avatar -->
                                    </div>
                                    <!-- /message figure -->
                                    <!-- message body -->
                                    <div class="list-group-item-body pl-md-2">
                                        <!-- grid row -->
                                        <div class="row">
                                            <!-- grid column -->
                                            <div class="col-12 col-lg-3 d-none d-lg-block">
                                                <h4 class="list-group-item-title text-truncate">
                                                    <a href="app-conversations.html">Gold Dex</a>
                                                </h4>
                                                <p class="list-group-item-text"> 9 members </p>
                                            </div>
                                            <!-- /grid column -->
                                            <!-- grid column -->
                                            <div class="col-12 col-lg-7">
                                                <h4 class="list-group-item-title text-truncate">
                                                    <a href="app-conversations.html">We are subscribed to local deals in Amsterdam</a>
                                                </h4>
                                                <p class="list-group-item-text text-truncate"> Anyone please confirm this info, eligendi, quam possimus aliquid iste repellendus. </p>
                                            </div>
                                            <!-- /grid column -->
                                            <!-- grid column -->
                                            <div class="col-12 col-lg-2 text-lg-right">
                                                <p class="list-group-item-text"> 53 minutes ago </p>
                                            </div>
                                            <!-- /grid column -->
                                        </div>
                                        <!-- /grid row -->
                                    </div>
                                    <!-- /message body -->
                                    <!-- message actions -->
                                    <div class="list-group-item-figure">
                                        <!-- .dropdown -->
                                        <div class="dropdown">
                                            <button class="btn btn-reset px-2" data-toggle="dropdown">
                                                <i class="fa fa-ellipsis-v"></i>
                                            </button>
                                            <div class="dropdown-arrow"></div>
                                            <!-- .dropdown-menu -->
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a href="#" class="dropdown-item">Mark as read</a>
                                                <a href="#" class="dropdown-item">Mark as unread</a>
                                                <a href="#" class="dropdown-item">Toggle star</a>
                                                <a href="#" class="dropdown-item">Trash</a>
                                            </div>
                                            <!-- /.dropdown-menu -->
                                        </div>
                                        <!-- /.dropdown -->
                                    </div>
                                    <!-- /message actions -->
                                </div>
                                <!-- /message item -->
                                <!-- message item -->
                                <div class="list-group-item unread">
                                    <!-- message figure -->
                                    <div class="list-group-item-figure">
                        <span class="rating rating-sm mr-3">
                          <input type="checkbox" id="star3" value="1" checked="">
                          <label for="star3">
                            <span class="fa fa-star"></span>
                          </label>
                        </span>
                                        <!-- .avatar -->
                                        <div class="avatar has-badge">
                                            <a href="app-conversations.html" class="user-avatar">
                                                <img src="${pageContext.request.contextPath}/assets/assets/images/avatars/team1.jpg" alt="">
                                            </a>
                                            <span class="tile tile-xs tile-circle bg-red">4</span>
                                        </div>
                                        <!-- /.avatar -->
                                    </div>
                                    <!-- /message figure -->
                                    <!-- message body -->
                                    <div class="list-group-item-body pl-md-2">
                                        <!-- grid row -->
                                        <div class="row">
                                            <!-- grid column -->
                                            <div class="col-12 col-lg-3 d-none d-lg-block">
                                                <h4 class="list-group-item-title text-truncate">
                                                    <a href="app-conversations.html">Stilearning</a>
                                                </h4>
                                                <p class="list-group-item-text"> 17 members </p>
                                            </div>
                                            <!-- /grid column -->
                                            <!-- grid column -->
                                            <div class="col-12 col-lg-7">
                                                <h4 class="list-group-item-title text-truncate">
                                                    <a href="app-conversations.html">Invitation: Joe's Dinner @ Fri Aug 22</a>
                                                </h4>
                                                <p class="list-group-item-text text-truncate"> Sorry, I can't aspernatur debitis explicabo expedita eos, consequatur. </p>
                                            </div>
                                            <!-- /grid column -->
                                            <!-- grid column -->
                                            <div class="col-12 col-lg-2 text-lg-right">
                                                <p class="list-group-item-text"> 2 hours ago </p>
                                            </div>
                                            <!-- /grid column -->
                                        </div>
                                        <!-- /grid row -->
                                    </div>
                                    <!-- /message body -->
                                    <!-- message actions -->
                                    <div class="list-group-item-figure">
                                        <!-- .dropdown -->
                                        <div class="dropdown">
                                            <button class="btn btn-reset px-2" data-toggle="dropdown">
                                                <i class="fa fa-ellipsis-v"></i>
                                            </button>
                                            <div class="dropdown-arrow"></div>
                                            <!-- .dropdown-menu -->
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a href="#" class="dropdown-item">Mark as read</a>
                                                <a href="#" class="dropdown-item">Mark as unread</a>
                                                <a href="#" class="dropdown-item">Toggle star</a>
                                                <a href="#" class="dropdown-item">Trash</a>
                                            </div>
                                            <!-- /.dropdown-menu -->
                                        </div>
                                        <!-- /.dropdown -->
                                    </div>
                                    <!-- /message actions -->
                                </div>
                                <!-- /message item -->
                                <!-- message item -->
                                <div class="list-group-item read">
                                    <!-- message figure -->
                                    <div class="list-group-item-figure">
                        <span class="rating rating-sm mr-3">
                          <input type="checkbox" id="star4" value="1">
                          <label for="star4">
                            <span class="fa fa-star"></span>
                          </label>
                        </span>
                                        <!-- .avatar -->
                                        <div class="avatar">
                                            <a href="app-conversations.html" class="user-avatar">
                                                <img src="${pageContext.request.contextPath}/assets/assets/images/avatars/team3.png" alt="">
                                            </a>
                                        </div>
                                        <!-- /.avatar -->
                                    </div>
                                    <!-- /message figure -->
                                    <!-- message body -->
                                    <div class="list-group-item-body pl-md-2">
                                        <!-- grid row -->
                                        <div class="row">
                                            <!-- grid column -->
                                            <div class="col-12 col-lg-3 d-none d-lg-block">
                                                <h4 class="list-group-item-title text-truncate">
                                                    <a href="app-conversations.html">Openlane</a>
                                                </h4>
                                                <p class="list-group-item-text"> 21 members </p>
                                            </div>
                                            <!-- /grid column -->
                                            <!-- grid column -->
                                            <div class="col-12 col-lg-7">
                                                <h4 class="list-group-item-title text-truncate">
                                                    <a href="app-conversations.html">Final reminder: Upgrade to Pro</a>
                                                </h4>
                                                <p class="list-group-item-text text-truncate"> Follow up this reminder asap, quam error praesentium asperiores a quidem. </p>
                                            </div>
                                            <!-- /grid column -->
                                            <!-- grid column -->
                                            <div class="col-12 col-lg-2 text-lg-right">
                                                <p class="list-group-item-text"> 23 hours ago </p>
                                            </div>
                                            <!-- /grid column -->
                                        </div>
                                        <!-- /grid row -->
                                    </div>
                                    <!-- /message body -->
                                    <!-- message actions -->
                                    <div class="list-group-item-figure">
                                        <!-- .dropdown -->
                                        <div class="dropdown">
                                            <button class="btn btn-reset px-2" data-toggle="dropdown">
                                                <i class="fa fa-ellipsis-v"></i>
                                            </button>
                                            <div class="dropdown-arrow"></div>
                                            <!-- .dropdown-menu -->
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a href="#" class="dropdown-item">Mark as read</a>
                                                <a href="#" class="dropdown-item">Mark as unread</a>
                                                <a href="#" class="dropdown-item">Toggle star</a>
                                                <a href="#" class="dropdown-item">Trash</a>
                                            </div>
                                            <!-- /.dropdown-menu -->
                                        </div>
                                        <!-- /.dropdown -->
                                    </div>
                                    <!-- /message actions -->
                                </div>
                                <!-- /message item -->
                                <!-- message item -->
                                <div class="list-group-item read">
                                    <!-- message figure -->
                                    <div class="list-group-item-figure">
                        <span class="rating rating-sm mr-3">
                          <input type="checkbox" id="star5" value="1">
                          <label for="star5">
                            <span class="fa fa-star"></span>
                          </label>
                        </span>
                                        <!-- .avatar -->
                                        <div class="avatar">
                                            <a href="app-conversations.html" class="tile tile-circle bg-green">GZ</a>
                                        </div>
                                        <!-- /.avatar -->
                                    </div>
                                    <!-- /message figure -->
                                    <!-- message body -->
                                    <div class="list-group-item-body pl-md-2">
                                        <!-- grid row -->
                                        <div class="row">
                                            <!-- grid column -->
                                            <div class="col-12 col-lg-3 d-none d-lg-block">
                                                <h4 class="list-group-item-title text-truncate">
                                                    <a href="app-conversations.html">Gogo Zoom</a>
                                                </h4>
                                                <p class="list-group-item-text"> 8 members </p>
                                            </div>
                                            <!-- /grid column -->
                                            <!-- grid column -->
                                            <div class="col-12 col-lg-7">
                                                <h4 class="list-group-item-title text-truncate">
                                                    <a href="app-conversations.html">Live healthy with this wireless sensor.</a>
                                                </h4>
                                                <p class="list-group-item-text text-truncate"> Hi all, eveniet magnam fugiat odio nemo vero! </p>
                                            </div>
                                            <!-- /grid column -->
                                            <!-- grid column -->
                                            <div class="col-12 col-lg-2 text-lg-right">
                                                <p class="list-group-item-text"> 1 day ago </p>
                                            </div>
                                            <!-- /grid column -->
                                        </div>
                                        <!-- /grid row -->
                                    </div>
                                    <!-- /message body -->
                                    <!-- message actions -->
                                    <div class="list-group-item-figure">
                                        <!-- .dropdown -->
                                        <div class="dropdown">
                                            <button class="btn btn-reset px-2" data-toggle="dropdown">
                                                <i class="fa fa-ellipsis-v"></i>
                                            </button>
                                            <div class="dropdown-arrow"></div>
                                            <!-- .dropdown-menu -->
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a href="#" class="dropdown-item">Mark as read</a>
                                                <a href="#" class="dropdown-item">Mark as unread</a>
                                                <a href="#" class="dropdown-item">Toggle star</a>
                                                <a href="#" class="dropdown-item">Trash</a>
                                            </div>
                                            <!-- /.dropdown-menu -->
                                        </div>
                                        <!-- /.dropdown -->
                                    </div>
                                    <!-- /message actions -->
                                </div>
                                <!-- /message item -->
                                <!-- message item -->
                                <div class="list-group-item read">
                                    <!-- message figure -->
                                    <div class="list-group-item-figure">
                        <span class="rating rating-sm mr-3">
                          <input type="checkbox" id="star6" value="1" checked="">
                          <label for="star6">
                            <span class="fa fa-star"></span>
                          </label>
                        </span>
                                        <!-- .avatar -->
                                        <div class="avatar">
                                            <a href="app-conversations.html" class="tile tile-circle bg-teal">GD</a>
                                        </div>
                                        <!-- /.avatar -->
                                    </div>
                                    <!-- /message figure -->
                                    <!-- message body -->
                                    <div class="list-group-item-body pl-md-2">
                                        <!-- grid row -->
                                        <div class="row">
                                            <!-- grid column -->
                                            <div class="col-12 col-lg-3 d-none d-lg-block">
                                                <h4 class="list-group-item-title text-truncate">
                                                    <a href="app-conversations.html">Gold Dex</a>
                                                </h4>
                                                <p class="list-group-item-text"> 4 members </p>
                                            </div>
                                            <!-- /grid column -->
                                            <!-- grid column -->
                                            <div class="col-12 col-lg-7">
                                                <h4 class="list-group-item-title text-truncate">
                                                    <a href="app-conversations.html">Invitation: Design Review @ Mon Jul 7</a>
                                                </h4>
                                                <p class="list-group-item-text text-truncate"> I think we need to nostrum minus voluptates non veritatis facere. </p>
                                            </div>
                                            <!-- /grid column -->
                                            <!-- grid column -->
                                            <div class="col-12 col-lg-2 text-lg-right">
                                                <p class="list-group-item-text"> 1 day ago </p>
                                            </div>
                                            <!-- /grid column -->
                                        </div>
                                        <!-- /grid row -->
                                    </div>
                                    <!-- /message body -->
                                    <!-- message actions -->
                                    <div class="list-group-item-figure">
                                        <!-- .dropdown -->
                                        <div class="dropdown">
                                            <button class="btn btn-reset px-2" data-toggle="dropdown">
                                                <i class="fa fa-ellipsis-v"></i>
                                            </button>
                                            <div class="dropdown-arrow"></div>
                                            <!-- .dropdown-menu -->
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a href="#" class="dropdown-item">Mark as read</a>
                                                <a href="#" class="dropdown-item">Mark as unread</a>
                                                <a href="#" class="dropdown-item">Toggle star</a>
                                                <a href="#" class="dropdown-item">Trash</a>
                                            </div>
                                            <!-- /.dropdown-menu -->
                                        </div>
                                        <!-- /.dropdown -->
                                    </div>
                                    <!-- /message actions -->
                                </div>
                                <!-- /message item -->
                                <!-- message item -->
                                <div class="list-group-item read">
                                    <!-- message figure -->
                                    <div class="list-group-item-figure">
                        <span class="rating rating-sm mr-3">
                          <input type="checkbox" id="star7" value="1" checked="">
                          <label for="star7">
                            <span class="fa fa-star"></span>
                          </label>
                        </span>
                                        <!-- .avatar -->
                                        <div class="avatar">
                                            <a href="app-conversations.html" class="user-avatar">
                                                <img src="${pageContext.request.contextPath}/assets/assets/images/avatars/team2.png" alt="">
                                            </a>
                                        </div>
                                        <!-- /.avatar -->
                                    </div>
                                    <!-- /message figure -->
                                    <!-- message body -->
                                    <div class="list-group-item-body pl-md-2">
                                        <!-- grid row -->
                                        <div class="row">
                                            <!-- grid column -->
                                            <div class="col-12 col-lg-3 d-none d-lg-block">
                                                <h4 class="list-group-item-title text-truncate">
                                                    <a href="app-conversations.html">Creative Division</a>
                                                </h4>
                                                <p class="list-group-item-text"> 15 members </p>
                                            </div>
                                            <!-- /grid column -->
                                            <!-- grid column -->
                                            <div class="col-12 col-lg-7">
                                                <h4 class="list-group-item-title text-truncate">
                                                    <a href="app-conversations.html">Need some feedback on this please</a>
                                                </h4>
                                                <p class="list-group-item-text text-truncate"> Yeah, I know we have libero dicta aspernatur nostrum doloremque natus. </p>
                                            </div>
                                            <!-- /grid column -->
                                            <!-- grid column -->
                                            <div class="col-12 col-lg-2 text-lg-right">
                                                <p class="list-group-item-text"> 2 days ago </p>
                                            </div>
                                            <!-- /grid column -->
                                        </div>
                                        <!-- /grid row -->
                                    </div>
                                    <!-- /message body -->
                                    <!-- message actions -->
                                    <div class="list-group-item-figure">
                                        <!-- .dropdown -->
                                        <div class="dropdown">
                                            <button class="btn btn-reset px-2" data-toggle="dropdown">
                                                <i class="fa fa-ellipsis-v"></i>
                                            </button>
                                            <div class="dropdown-arrow"></div>
                                            <!-- .dropdown-menu -->
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a href="#" class="dropdown-item">Mark as read</a>
                                                <a href="#" class="dropdown-item">Mark as unread</a>
                                                <a href="#" class="dropdown-item">Toggle star</a>
                                                <a href="#" class="dropdown-item">Trash</a>
                                            </div>
                                            <!-- /.dropdown-menu -->
                                        </div>
                                        <!-- /.dropdown -->
                                    </div>
                                    <!-- /message actions -->
                                </div>
                                <!-- /message item -->
                                <!-- message item -->
                                <div class="list-group-item read">
                                    <!-- message figure -->
                                    <div class="list-group-item-figure">
                        <span class="rating rating-sm mr-3">
                          <input type="checkbox" id="star8" value="1">
                          <label for="star8">
                            <span class="fa fa-star"></span>
                          </label>
                        </span>
                                        <!-- .avatar -->
                                        <div class="avatar">
                                            <a href="app-conversations.html" class="tile tile-circle bg-pink">LD</a>
                                        </div>
                                        <!-- /.avatar -->
                                    </div>
                                    <!-- /message figure -->
                                    <!-- message body -->
                                    <div class="list-group-item-body pl-md-2">
                                        <!-- grid row -->
                                        <div class="row">
                                            <!-- grid column -->
                                            <div class="col-12 col-lg-3 d-none d-lg-block">
                                                <h4 class="list-group-item-title text-truncate">
                                                    <a href="app-conversations.html">Lab Drill</a>
                                                </h4>
                                                <p class="list-group-item-text"> 6 members </p>
                                            </div>
                                            <!-- /grid column -->
                                            <!-- grid column -->
                                            <div class="col-12 col-lg-7">
                                                <h4 class="list-group-item-title text-truncate">
                                                    <a href="app-conversations.html">Our UX exercise is ready</a>
                                                </h4>
                                                <p class="list-group-item-text text-truncate"> Dear All, consequatur, perspiciatis vitae! Ullam, architecto porro. </p>
                                            </div>
                                            <!-- /grid column -->
                                            <!-- grid column -->
                                            <div class="col-12 col-lg-2 text-lg-right">
                                                <p class="list-group-item-text"> 6 days ago </p>
                                            </div>
                                            <!-- /grid column -->
                                        </div>
                                        <!-- /grid row -->
                                    </div>
                                    <!-- /message body -->
                                    <!-- message actions -->
                                    <div class="list-group-item-figure">
                                        <!-- .dropdown -->
                                        <div class="dropdown">
                                            <button class="btn btn-reset px-2" data-toggle="dropdown">
                                                <i class="fa fa-ellipsis-v"></i>
                                            </button>
                                            <div class="dropdown-arrow"></div>
                                            <!-- .dropdown-menu -->
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a href="#" class="dropdown-item">Mark as read</a>
                                                <a href="#" class="dropdown-item">Mark as unread</a>
                                                <a href="#" class="dropdown-item">Toggle star</a>
                                                <a href="#" class="dropdown-item">Trash</a>
                                            </div>
                                            <!-- /.dropdown-menu -->
                                        </div>
                                        <!-- /.dropdown -->
                                    </div>
                                    <!-- /message actions -->
                                </div>
                                <!-- /message item -->
                                <!-- message item -->
                                <div class="list-group-item read">
                                    <!-- message figure -->
                                    <div class="list-group-item-figure">
                        <span class="rating rating-sm mr-3">
                          <input type="checkbox" id="star9" value="1" checked="">
                          <label for="star9">
                            <span class="fa fa-star"></span>
                          </label>
                        </span>
                                        <!-- .avatar -->
                                        <div class="avatar">
                                            <a href="app-conversations.html" class="tile tile-circle bg-red">C</a>
                                        </div>
                                        <!-- /.avatar -->
                                    </div>
                                    <!-- /message figure -->
                                    <!-- message body -->
                                    <div class="list-group-item-body pl-md-2">
                                        <!-- grid row -->
                                        <div class="row">
                                            <!-- grid column -->
                                            <div class="col-12 col-lg-3 d-none d-lg-block">
                                                <h4 class="list-group-item-title text-truncate">
                                                    <a href="app-conversations.html">Codehow</a>
                                                </h4>
                                                <p class="list-group-item-text"> 32 members </p>
                                            </div>
                                            <!-- /grid column -->
                                            <!-- grid column -->
                                            <div class="col-12 col-lg-7">
                                                <h4 class="list-group-item-title text-truncate">
                                                    <a href="app-conversations.html">Digital VS. Education</a>
                                                </h4>
                                                <p class="list-group-item-text text-truncate"> Hi Guys, aliquam, dolore at corrupti natus commodi! </p>
                                            </div>
                                            <!-- /grid column -->
                                            <!-- grid column -->
                                            <div class="col-12 col-lg-2 text-lg-right">
                                                <p class="list-group-item-text"> 1 week ago </p>
                                            </div>
                                            <!-- /grid column -->
                                        </div>
                                        <!-- /grid row -->
                                    </div>
                                    <!-- /message body -->
                                    <!-- message actions -->
                                    <div class="list-group-item-figure">
                                        <!-- .dropdown -->
                                        <div class="dropdown">
                                            <button class="btn btn-reset px-2" data-toggle="dropdown">
                                                <i class="fa fa-ellipsis-v"></i>
                                            </button>
                                            <div class="dropdown-arrow"></div>
                                            <!-- .dropdown-menu -->
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a href="#" class="dropdown-item">Mark as read</a>
                                                <a href="#" class="dropdown-item">Mark as unread</a>
                                                <a href="#" class="dropdown-item">Toggle star</a>
                                                <a href="#" class="dropdown-item">Trash</a>
                                            </div>
                                            <!-- /.dropdown-menu -->
                                        </div>
                                        <!-- /.dropdown -->
                                    </div>
                                    <!-- /message actions -->
                                </div>
                                <!-- /message item -->
                                <!-- message item -->
                                <div class="list-group-item read">
                                    <!-- message figure -->
                                    <div class="list-group-item-figure">
                        <span class="rating rating-sm mr-3">
                          <input type="checkbox" id="star10" value="1">
                          <label for="star10">
                            <span class="fa fa-star"></span>
                          </label>
                        </span>
                                        <!-- .avatar -->
                                        <div class="avatar">
                                            <a href="app-conversations.html" class="user-avatar">
                                                <img src="${pageContext.request.contextPath}/assets/assets/images/avatars/team2.png" alt="">
                                            </a>
                                        </div>
                                        <!-- /.avatar -->
                                    </div>
                                    <!-- /message figure -->
                                    <!-- message body -->
                                    <div class="list-group-item-body pl-md-2">
                                        <!-- grid row -->
                                        <div class="row">
                                            <!-- grid column -->
                                            <div class="col-12 col-lg-3 d-none d-lg-block">
                                                <h4 class="list-group-item-title text-truncate">
                                                    <a href="app-conversations.html">Creative Division</a>
                                                </h4>
                                                <p class="list-group-item-text"> 3 members </p>
                                            </div>
                                            <!-- /grid column -->
                                            <!-- grid column -->
                                            <div class="col-12 col-lg-7">
                                                <h4 class="list-group-item-title text-truncate">
                                                    <a href="app-conversations.html">Work Inquiry from Poland</a>
                                                </h4>
                                                <p class="list-group-item-text text-truncate"> Dear Team, exercitationem, eligendi. At voluptates reiciendis blanditiis! </p>
                                            </div>
                                            <!-- /grid column -->
                                            <!-- grid column -->
                                            <div class="col-12 col-lg-2 text-lg-right">
                                                <p class="list-group-item-text"> Feb 02 </p>
                                            </div>
                                            <!-- /grid column -->
                                        </div>
                                        <!-- /grid row -->
                                    </div>
                                    <!-- /message body -->
                                    <!-- message actions -->
                                    <div class="list-group-item-figure">
                                        <!-- .dropdown -->
                                        <div class="dropdown">
                                            <button class="btn btn-reset px-2" data-toggle="dropdown">
                                                <i class="fa fa-ellipsis-v"></i>
                                            </button>
                                            <div class="dropdown-arrow"></div>
                                            <!-- .dropdown-menu -->
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a href="#" class="dropdown-item">Mark as read</a>
                                                <a href="#" class="dropdown-item">Mark as unread</a>
                                                <a href="#" class="dropdown-item">Toggle star</a>
                                                <a href="#" class="dropdown-item">Trash</a>
                                            </div>
                                            <!-- /.dropdown-menu -->
                                        </div>
                                        <!-- /.dropdown -->
                                    </div>
                                    <!-- /message actions -->
                                </div>
                                <!-- /message item -->
                            </div>
                            <!-- /.list-group-messages -->
                        </section>
                        <!-- /.card -->
                        <!-- .section-block -->
                        <div class="section-block">
                            <!-- record sumary -->
                            <p class="text-muted"> Showing 1 to 10 of 1,000 entries </p>
                            <!-- /record sumary -->
                            <!-- .pagination -->
                            <ul class="pagination justify-content-center mb-5 mb-sm-0">
                                <li class="page-item disabled">
                                    <a class="page-link" href="#" tabindex="-1">
                                        <i class="fa fa-lg fa-angle-left"></i>
                                    </a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#">1</a>
                                </li>
                                <li class="page-item disabled">
                                    <a class="page-link" href="#" tabindex="-1">...</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#">13</a>
                                </li>
                                <li class="page-item active">
                                    <a class="page-link" href="#">14</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#">15</a>
                                </li>
                                <li class="page-item disabled">
                                    <a class="page-link" href="#" tabindex="-1">...</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#">24</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#">
                                        <i class="fa fa-lg fa-angle-right"></i>
                                    </a>
                                </li>
                            </ul>
                            <!-- /.pagination -->
                        </div>
                        <!-- /.section-block -->
                    </div>
                    <!-- /.page-section -->
                </div>
                <!-- /.page-inner -->
            </div>
            <!-- /.page -->
        </div>
        <!-- /.wrapper -->
    </main>
    <!-- /.app-main -->
    <div class="app-backdrop"></div></div>
<!-- /.app -->
<!-- BEGIN BASE JS -->
<script src="${pageContext.request.contextPath}/assets/assets/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/assets/vendor/bootstrap/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<!-- END BASE JS -->
<!-- BEGIN PLUGINS JS -->
<script src="${pageContext.request.contextPath}/assets/assets/vendor/stacked-menu/stacked-menu.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/assets/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<!-- END PLUGINS JS -->
<!-- BEGIN THEME JS -->
<script src="${pageContext.request.contextPath}/assets/assets/javascript/main.min.js"></script>
<!-- END THEME JS -->
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-116692175-1"></script>
<script>
    window.dataLayer = window.dataLayer || [];

    function gtag()
    {
        dataLayer.push(arguments);
    }
    gtag('js', new Date());
    gtag('config', 'UA-116692175-1');
</script>


</body></html>