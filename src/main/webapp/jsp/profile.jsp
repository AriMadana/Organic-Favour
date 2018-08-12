<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">

    <!-- Libs CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/fonts/feather/feather.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/libs/highlight/styles/vs2015.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/libs/quill/dist/quill.core.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/libs/select2/dist/css/select2.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/libs/flatpickr/dist/flatpickr.min.css">

    <!-- Theme CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/theme.min.css">

    <title>Dashkit</title>
    <style>
        .cust_dz .dz-message{
            top:0;
            left:0;
            right:0;
            bottom:0;
            padding:0 !important;
            height:inherit !important;
            border-radius: 50%;
        }
        .nav-item .nav-link:hover {
            cursor: pointer;
        }
    </style>

</head>
<body>

<!-- TOPNAV
================================================== -->
<nav class="navbar navbar-expand-lg navbar-light bg-white">
    <div class="container">

        <!-- Toggler -->
        <button class="navbar-toggler mr-auto" type="button" data-toggle="collapse" data-target="#navbar" aria-controls="navbar" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Brand -->
        <a class="navbar-brand mr-auto" href="index.html">
            <img src="${pageContext.request.contextPath}/assets/img/logo.svg" alt="..." class="navbar-brand-img">
        </a>

        <!-- Form -->
        <form class="form-inline mr-4 d-none d-lg-flex">
            <div class="input-group input-group-rounded input-group-merge" data-toggle="lists" data-lists-values='["name"]'>

                <!-- Input -->
                <input type="search" class="form-control form-control-prepended  dropdown-toggle search" data-toggle="dropdown" placeholder="Search" aria-label="Search">
                <div class="input-group-prepend">
                    <div class="input-group-text">
                        <i class="fe fe-search"></i>
                    </div>
                </div>

                <!-- Menu -->
                <div class="dropdown-menu dropdown-menu-card">
                    <div class="card-body">

                        <!-- List group -->
                        <div class="list-group list-group-flush list my--3">
                            <a href="team-overview.html" class="list-group-item px-0">
                                <div class="row align-items-center">
                                    <div class="col-auto">

                                        <!-- Avatar -->
                                        <div class="avatar">
                                            <img src="${pageContext.request.contextPath}/assets/img/avatars/teams/team-logo-1.jpg" alt="..." class="avatar-img rounded">
                                        </div>

                                    </div>
                                    <div class="col ml--2">

                                        <!-- Title -->
                                        <h4 class="text-body mb-1 name">
                                            Airbnb
                                        </h4>

                                        <!-- Time -->
                                        <p class="small text-muted mb-0">
                                            <span class="fe fe-clock"></span> <time datetime="2018-05-24">Updated 2hr ago</time>
                                        </p>

                                    </div>
                                </div> <!-- / .row -->
                            </a>
                            <a href="team-overview.html" class="list-group-item px-0">
                                <div class="row align-items-center">
                                    <div class="col-auto">

                                        <!-- Avatar -->
                                        <div class="avatar">
                                            <img src="${pageContext.request.contextPath}/assets/img/avatars/teams/team-logo-2.jpg" alt="..." class="avatar-img rounded">
                                        </div>

                                    </div>
                                    <div class="col ml--2">

                                        <!-- Title -->
                                        <h4 class="text-body mb-1 name">
                                            Medium Corporation
                                        </h4>

                                        <!-- Time -->
                                        <p class="small text-muted mb-0">
                                            <span class="fe fe-clock"></span> <time datetime="2018-05-24">Updated 2hr ago</time>
                                        </p>

                                    </div>
                                </div> <!-- / .row -->
                            </a>
                            <a href="project-overview.html" class="list-group-item px-0">

                                <div class="row align-items-center">
                                    <div class="col-auto">

                                        <!-- Avatar -->
                                        <div class="avatar avatar-4by3">
                                            <img src="${pageContext.request.contextPath}/assets/img/avatars/projects/project-1.jpg" alt="..." class="avatar-img rounded">
                                        </div>

                                    </div>
                                    <div class="col ml--2">

                                        <!-- Title -->
                                        <h4 class="text-body mb-1 name">
                                            Homepage Redesign
                                        </h4>

                                        <!-- Time -->
                                        <p class="small text-muted mb-0">
                                            <span class="fe fe-clock"></span> <time datetime="2018-05-24">Updated 4hr ago</time>
                                        </p>

                                    </div>
                                </div> <!-- / .row -->

                            </a>
                            <a href="project-overview.html" class="list-group-item px-0">

                                <div class="row align-items-center">
                                    <div class="col-auto">

                                        <!-- Avatar -->
                                        <div class="avatar avatar-4by3">
                                            <img src="${pageContext.request.contextPath}/assets/img/avatars/projects/project-2.jpg" alt="..." class="avatar-img rounded">
                                        </div>

                                    </div>
                                    <div class="col ml--2">

                                        <!-- Title -->
                                        <h4 class="text-body mb-1 name">
                                            Travels & Time
                                        </h4>

                                        <!-- Time -->
                                        <p class="small text-muted mb-0">
                                            <span class="fe fe-clock"></span> <time datetime="2018-05-24">Updated 4hr ago</time>
                                        </p>

                                    </div>
                                </div> <!-- / .row -->

                            </a>
                            <a href="project-overview.html" class="list-group-item px-0">

                                <div class="row align-items-center">
                                    <div class="col-auto">

                                        <!-- Avatar -->
                                        <div class="avatar avatar-4by3">
                                            <img src="${pageContext.request.contextPath}/assets/img/avatars/projects/project-3.jpg" alt="..." class="avatar-img rounded">
                                        </div>

                                    </div>
                                    <div class="col ml--2">

                                        <!-- Title -->
                                        <h4 class="text-body mb-1 name">
                                            Safari Exploration
                                        </h4>

                                        <!-- Time -->
                                        <p class="small text-muted mb-0">
                                            <span class="fe fe-clock"></span> <time datetime="2018-05-24">Updated 4hr ago</time>
                                        </p>

                                    </div>
                                </div> <!-- / .row -->

                            </a>
                            <a href="profile-posts.html" class="list-group-item px-0">

                                <div class="row align-items-center">
                                    <div class="col-auto">

                                        <!-- Avatar -->
                                        <div class="avatar">
                                            <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-1.jpg" alt="..." class="avatar-img rounded-circle">
                                        </div>

                                    </div>
                                    <div class="col ml--2">

                                        <!-- Title -->
                                        <h4 class="text-body mb-1 name">
                                            Dianna Smiley
                                        </h4>

                                        <!-- Status -->
                                        <p class="text-body small mb-0">
                                            <span class="text-success">●</span> Online
                                        </p>

                                    </div>
                                </div> <!-- / .row -->

                            </a>
                            <a href="profile-posts.html" class="list-group-item px-0">

                                <div class="row align-items-center">
                                    <div class="col-auto">

                                        <!-- Avatar -->
                                        <div class="avatar">
                                            <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-2.jpg" alt="..." class="avatar-img rounded-circle">
                                        </div>

                                    </div>
                                    <div class="col ml--2">

                                        <!-- Title -->
                                        <h4 class="text-body mb-1 name">
                                            Ab Hadley
                                        </h4>

                                        <!-- Status -->
                                        <p class="text-body small mb-0">
                                            <span class="text-danger">●</span> Offline
                                        </p>

                                    </div>
                                </div> <!-- / .row -->

                            </a>
                        </div>

                    </div>
                </div> <!-- / .dropdown-menu -->

            </div>
        </form>

        <!-- User -->
        <div class="navbar-user">

            <!-- Dropdown -->
            <div class="dropdown mr-4 d-none d-lg-flex">

                <!-- Toggle -->
                <a href="#" class="text-muted" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <span class="icon active">
                <i class="fe fe-bell"></i>
              </span>
                </a>

                <!-- Menu -->
                <div class="dropdown-menu dropdown-menu-right dropdown-menu-card">
                    <div class="card-header">
                        <div class="row align-items-center">
                            <div class="col">

                                <!-- Title -->
                                <h5 class="card-header-title">
                                    Notifications
                                </h5>

                            </div>
                            <div class="col-auto">

                                <!-- Link -->
                                <a href="#!" class="small">
                                    View all
                                </a>

                            </div>
                        </div> <!-- / .row -->
                    </div> <!-- / .card-header -->
                    <div class="card-body">

                        <!-- List group -->
                        <div class="list-group list-group-flush my--3">
                            <a class="list-group-item px-0" href="#!">

                                <div class="row">
                                    <div class="col-auto">

                                        <!-- Avatar -->
                                        <div class="avatar avatar-sm">
                                            <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-1.jpg" alt="..." class="avatar-img rounded-circle">
                                        </div>

                                    </div>
                                    <div class="col ml--2">

                                        <!-- Content -->
                                        <div class="small text-muted">
                                            <strong class="text-body">Dianna Smiley</strong> shared your post with <strong class="text-body">Ab Hadley</strong>, <strong class="text-body">Adolfo Hess</strong>, and <strong class="text-body">3 others</strong>.
                                        </div>

                                    </div>
                                    <div class="col-auto">

                                        <small class="text-muted">
                                            2m
                                        </small>

                                    </div>
                                </div> <!-- / .row -->

                            </a>
                            <a class="list-group-item px-0" href="#!">

                                <div class="row">
                                    <div class="col-auto">

                                        <!-- Avatar -->
                                        <div class="avatar avatar-sm">
                                            <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-2.jpg" alt="..." class="avatar-img rounded-circle">
                                        </div>

                                    </div>
                                    <div class="col ml--2">

                                        <!-- Content -->
                                        <div class="small text-muted">
                                            <strong class="text-body">Ab Hadley</strong> reacted to your post with a 😍
                                        </div>

                                    </div>
                                    <div class="col-auto">

                                        <small class="text-muted">
                                            2m
                                        </small>

                                    </div>
                                </div> <!-- / .row -->

                            </a>
                            <a class="list-group-item px-0" href="#!">

                                <div class="row">
                                    <div class="col-auto">

                                        <!-- Avatar -->
                                        <div class="avatar avatar-sm">
                                            <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-3.jpg" alt="..." class="avatar-img rounded-circle">
                                        </div>

                                    </div>
                                    <div class="col ml--2">

                                        <!-- Content -->
                                        <div class="small text-muted">
                                            <strong class="text-body">Adolfo Hess</strong> commented <blockquote class="text-body">“I don’t think this really makes sense to do without approval from Johnathan since he’s the one...” </blockquote>
                                        </div>

                                    </div>
                                    <div class="col-auto">

                                        <small class="text-muted">
                                            2m
                                        </small>

                                    </div>
                                </div> <!-- / .row -->

                            </a>
                            <a class="list-group-item px-0" href="#!">

                                <div class="row">
                                    <div class="col-auto">

                                        <!-- Avatar -->
                                        <div class="avatar avatar-sm">
                                            <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-4.jpg" alt="..." class="avatar-img rounded-circle">
                                        </div>

                                    </div>
                                    <div class="col ml--2">

                                        <!-- Content -->
                                        <div class="small text-muted">
                                            <strong class="text-body">Daniela Dewitt</strong> subscribed to you.
                                        </div>

                                    </div>
                                    <div class="col-auto">

                                        <small class="text-muted">
                                            2m
                                        </small>

                                    </div>
                                </div> <!-- / .row -->

                            </a>
                            <a class="list-group-item px-0" href="#!">

                                <div class="row">
                                    <div class="col-auto">

                                        <!-- Avatar -->
                                        <div class="avatar avatar-sm">
                                            <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-5.jpg" alt="..." class="avatar-img rounded-circle">
                                        </div>

                                    </div>
                                    <div class="col ml--2">

                                        <!-- Content -->
                                        <div class="small text-muted">
                                            <strong class="text-body">Miyah Myles</strong> shared your post with <strong class="text-body">Ryu Duke</strong>, <strong class="text-body">Glen Rouse</strong>, and <strong class="text-body">3 others</strong>.
                                        </div>

                                    </div>
                                    <div class="col-auto">

                                        <small class="text-muted">
                                            2m
                                        </small>

                                    </div>
                                </div> <!-- / .row -->

                            </a>
                            <a class="list-group-item px-0" href="#!">

                                <div class="row">
                                    <div class="col-auto">

                                        <!-- Avatar -->
                                        <div class="avatar avatar-sm">
                                            <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-6.jpg" alt="..." class="avatar-img rounded-circle">
                                        </div>

                                    </div>
                                    <div class="col ml--2">

                                        <!-- Content -->
                                        <div class="small text-muted">
                                            <strong class="text-body">Ryu Duke</strong> reacted to your post with a 😍
                                        </div>

                                    </div>
                                    <div class="col-auto">

                                        <small class="text-muted">
                                            2m
                                        </small>

                                    </div>
                                </div> <!-- / .row -->

                            </a>
                            <a class="list-group-item px-0" href="#!">

                                <div class="row">
                                    <div class="col-auto">

                                        <!-- Avatar -->
                                        <div class="avatar avatar-sm">
                                            <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-7.jpg" alt="..." class="avatar-img rounded-circle">
                                        </div>

                                    </div>
                                    <div class="col ml--2">

                                        <!-- Content -->
                                        <div class="small text-muted">
                                            <strong class="text-body">Glen Rouse</strong> commented <blockquote class="text-body">“I don’t think this really makes sense to do without approval from Johnathan since he’s the one...” </blockquote>
                                        </div>

                                    </div>
                                    <div class="col-auto">

                                        <small class="text-muted">
                                            2m
                                        </small>

                                    </div>
                                </div> <!-- / .row -->

                            </a>
                            <a class="list-group-item px-0" href="#!">

                                <div class="row">
                                    <div class="col-auto">

                                        <!-- Avatar -->
                                        <div class="avatar avatar-sm">
                                            <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-8.jpg" alt="..." class="avatar-img rounded-circle">
                                        </div>

                                    </div>
                                    <div class="col ml--2">

                                        <!-- Content -->
                                        <div class="small text-muted">
                                            <strong class="text-body">Grace Gross</strong> subscribed to you.
                                        </div>

                                    </div>
                                    <div class="col-auto">

                                        <small class="text-muted">
                                            2m
                                        </small>

                                    </div>
                                </div> <!-- / .row -->

                            </a>
                        </div>

                    </div>
                </div> <!-- / .dropdown-menu -->

            </div>

            <!-- Dropdown -->
            <div class="dropdown">

                <!-- Toggle -->
                <a href="#" class="avatar avatar-sm avatar-online dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-1.jpg" alt="..." class="avatar-img rounded-circle">
                </a>

                <!-- Menu -->
                <div class="dropdown-menu dropdown-menu-right">
                    <a href="profile-posts.html" class="dropdown-item">Profile</a>
                    <a href="settings.html" class="dropdown-item">Settings</a>
                    <hr class="dropdown-divider">
                    <a href="sign-in.html" class="dropdown-item">Logout</a>
                </div>

            </div>

        </div>

        <!-- Collapse -->
        <div class="collapse navbar-collapse mr-auto order-lg-first" id="navbar">

            <!-- Form -->
            <form class="mt-4 mb-3 d-md-none">
                <input type="search" class="form-control form-control-rounded" placeholder="Search" aria-label="Search">
            </form>

            <!-- Navigation -->
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.html">
                        Dashboard
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#!" id="topnavPages" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Pages
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="topnavPages">
                        <li class="dropright">
                            <a class="dropdown-item dropdown-toggle" href="#!" id="topnavProfile" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Profile
                            </a>
                            <div class="dropdown-menu" aria-labelledby="topnavProfile">
                                <a class="dropdown-item" href="profile-posts.html">
                                    Posts
                                </a>
                                <a class="dropdown-item" href="profile-groups.html">
                                    Groups
                                </a>
                                <a class="dropdown-item" href="profile-projects.html">
                                    Projects
                                </a>
                                <a class="dropdown-item" href="profile-files.html">
                                    Files
                                </a>
                                <a class="dropdown-item" href="profile-subscribers.html">
                                    Subscribers
                                </a>
                            </div>
                        </li>
                        <li class="dropright">
                            <a class="dropdown-item dropdown-toggle" href="#!" id="topnavProject" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Project
                            </a>
                            <div class="dropdown-menu" aria-labelledby="topnavProject">
                                <a class="dropdown-item" href="project-overview.html">
                                    Overview
                                </a>
                                <a class="dropdown-item" href="project-files.html">
                                    Files
                                </a>
                                <a class="dropdown-item" href="project-reports.html">
                                    Reports
                                </a>
                                <a class="dropdown-item" href="project-new.html">
                                    New project
                                </a>
                            </div>
                        </li>
                        <li class="dropright">
                            <a class="dropdown-item dropdown-toggle" href="#!" id="topnavTeam" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Team
                            </a>
                            <div class="dropdown-menu" aria-labelledby="topnavTeam">
                                <a class="dropdown-item" href="team-overview.html">
                                    Overview
                                </a>
                                <a class="dropdown-item" href="team-project.html">
                                    Project
                                </a>
                                <a class="dropdown-item" href="team-members.html">
                                    Members
                                </a>
                                <a class="dropdown-item" href="team-new.html">
                                    New team
                                </a>
                            </div>
                        </li>
                        <li>
                            <a class="dropdown-item" href="orders.html">
                                Orders
                            </a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="feed.html">
                                Feed
                            </a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="settings.html">
                                Settings
                            </a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="invoice.html">
                                Invoice
                            </a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="pricing.html">
                                Pricing
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#!" id="topnavAuth" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Auth
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="topnavAuth">
                        <li class="dropright">
                            <a class="dropdown-item dropdown-toggle" href="#!" id="topnavSignIn" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Sign in
                            </a>
                            <div class="dropdown-menu" aria-labelledby="topnavSignIn">
                                <a class="dropdown-item" href="sign-in-cover.html">
                                    Cover
                                </a>
                                <a class="dropdown-item" href="sign-in-illustration.html">
                                    Illustration
                                </a>
                                <a class="dropdown-item" href="sign-in-basics.html">
                                    Basic
                                </a>
                            </div>
                        </li>
                        <li class="dropright">
                            <a class="dropdown-item dropdown-toggle" href="#!" id="topnavSignUp" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Sign up
                            </a>
                            <div class="dropdown-menu" aria-labelledby="topnavSignUp">
                                <a class="dropdown-item" href="sign-up-cover.html">
                                    Cover
                                </a>
                                <a class="dropdown-item" href="sign-up-illustration.html">
                                    Illustration
                                </a>
                                <a class="dropdown-item" href="sign-up.html">
                                    Basic
                                </a>
                            </div>
                        </li>
                        <li class="dropright">
                            <a class="dropdown-item dropdown-toggle" href="#!" id="topnavPassword" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Password reset
                            </a>
                            <div class="dropdown-menu" aria-labelledby="topnavPassword">
                                <a class="dropdown-item" href="password-reset-cover.html">
                                    Cover
                                </a>
                                <a class="dropdown-item" href="password-reset-illustration.html">
                                    Illustration
                                </a>
                                <a class="dropdown-item" href="password-reset.html">
                                    Basic
                                </a>
                            </div>
                        </li>
                        <li class="dropright">
                            <a class="dropdown-item dropdown-toggle" href="#!" id="topnavError" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Error
                            </a>
                            <div class="dropdown-menu" aria-labelledby="topnavError">
                                <a class="dropdown-item" href="error-illustration.html">
                                    Illustration
                                </a>
                                <a class="dropdown-item" href="error.html">
                                    Basic
                                </a>
                            </div>
                        </li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#!" id="topnavLayouts" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Layouts
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="topnavLayouts">
                        <li>
                            <a class="dropdown-item" href="index.html">
                                Sidenav
                            </a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="dashboard-side-topnav.html">
                                Side + top nav
                            </a>
                        </li>
                        <li>
                            <a class="dropdown-item  active " href="dashboard-topnav.html">
                                Topnav
                            </a>
                        </li>
                        <li class="dropright">
                            <a class="dropdown-item dropdown-toggle" href="#!" id="topnavDashboard" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Without hero chart
                            </a>
                            <div class="dropdown-menu" aria-labelledby="topnavDashboard">
                                <a class="dropdown-item" href="dashboard-no-hero.html">
                                    Sidenav
                                </a>
                                <a class="dropdown-item" href="dashboard-side-topnav-no-hero.html">
                                    Side + topnav
                                </a>
                                <a class="dropdown-item " href="dashboard-topnav-no-hero.html">
                                    Topnav
                                </a>
                            </div>
                        </li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#!" id="topnavDocumentation" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Docs
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="topnavDocumentation">
                        <li>
                            <a class="dropdown-item" href="getting-started.html">
                                Getting started
                            </a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="components.html">
                                Components
                            </a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="changelog.html">
                                Changelog
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>

        </div>

    </div> <!-- / .container -->
</nav>

<!-- MAIN CONTENT
================================================== -->
<div class="main-content">
    <!-- HEADER -->
    <div class="header">

        <!-- Image -->
        <div class="dropzone dropzone-single mb-3" data-toggle="dropzone" data-dropzone-url="http://" style="z-index:0;">

            <!-- Fallback -->
            <div class="fallback">
                <div class="custom-file">
                    <input type="file" class="custom-file-input" id="projectCoverUploads">
                    <label class="custom-file-label" for="projectCoverUploads">Choose file</label>
                </div>
            </div>

            <!-- Preview -->
            <div class="dz-preview dz-preview-single">
                <div class="dz-preview-cover">
                    <img class="dz-preview-img" src="html" alt="..." data-dz-thumbnail style="border-radius:0px;">
                </div>
            </div>

        </div>

        <div class="container-fluid">

            <!-- Body -->
            <div class="header-body mt--5 mt-md--6">
                <div class="row align-items-end" style="margin-top:-13px;">
                    <div class="col-auto">

                        <!-- Avatar -->
                        <div class="avatar avatar-xxl header-avatar-top">
                            <div class="cust_dz dropzone dropzone-single mb-3" data-toggle="dropzone" data-dropzone-url="http://" style="z-index:0; height:inherit; border-radius:50%;">

                                <!-- Fallback -->
                                <div class="fallback">
                                    <div class="custom-file">
                                        <input type="file" class="custom-file-input" id="projectCoverUploads">
                                        <label class="custom-file-label" for="projectCoverUploads">Choose file</label>
                                    </div>
                                </div>

                                <!-- Preview -->
                                <div class="dz-preview dz-preview-single" style="border-radius:50%;">
                                    <div class="dz-preview-cover">
                                        <img class="dz-preview-img rounded-circle" src="html" alt="..." data-dz-thumbnail style="border-radius:0px;">
                                    </div>
                                </div>

                            </div>
                            <!-- <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-1.jpg" alt="..." class="avatar-img rounded-circle border border-body"> -->
                        </div>

                    </div>
                    <div class="col mb-3 ml--3 ml-md--2">

                        <!-- Pretitle -->
                        <h6 class="header-pretitle">
                            Members
                        </h6>

                        <!-- Title -->
                        <h1 class="header-title">
                            Dianna Smiley
                        </h1>

                    </div>
                    <div class="col-12 col-md-auto mt-2 mt-md-0 mb-md-3">

                        <!-- Button -->
                        <button type="button" class="btn btn-primary" disabled>
                            Save Image
                        </button>

                    </div>
                </div> <!-- / .row -->
                <div class="row align-items-center">
                    <div class="col">

                        <!-- Nav -->
                        <ul class="nav nav-tabs nav-overflow header-tabs">
                            <li class="nav-item">
                                <a id="posts" class="nav-link active">
                                    Posts
                                </a>
                            </li>
                            <li class="nav-item">
                                <a id="farms" class="nav-link">
                                    Farms
                                </a>
                            </li>
                            <li class="nav-item">
                                <a id="notis" class="nav-link">
                                    Notifications
                                </a>
                            </li>
                            <li class="nav-item">
                                <a id="setting" class="nav-link">
                                    Setting
                                </a>
                            </li>
                        </ul>

                    </div>
                </div>
            </div> <!-- / .header-body -->

        </div>
    </div>

    <!-- CONTENT -->
    <div class="container-fluid">
        <div class="row profile-info-row">
            <!-- Freaking Posts -->
            <div class="posts nav-link-data col-12 col-xl-8">
                <div class="card">
                    <div class="card-body">

                        <!-- Header -->
                        <div class="mb-3">
                            <div class="row align-items-center">
                                <div class="col-auto">

                                    <!-- Avatar -->
                                    <a href="#!" class="avatar">
                                        <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-1.jpg" alt="..." class="avatar-img rounded-circle">
                                    </a>

                                </div>
                                <div class="col ml--2">

                                    <!-- Title -->
                                    <h4 class="card-title mb-1">
                                        Dianna Smiley
                                    </h4>

                                    <!-- Time -->
                                    <p class="card-text small text-muted">
                                        <span class="fe fe-clock"></span> <time datetime="2018-05-24">4hr ago</time>
                                    </p>

                                </div>
                                <div class="col-auto">

                                    <!-- Dropdown -->
                                    <div class="dropdown">
                                        <a href="#!" class="dropdown-ellipses dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fe fe-more-vertical"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a href="#!" class="dropdown-item">
                                                Action
                                            </a>
                                            <a href="#!" class="dropdown-item">
                                                Another action
                                            </a>
                                            <a href="#!" class="dropdown-item">
                                                Something else here
                                            </a>
                                        </div>
                                    </div>

                                </div>
                            </div> <!-- / .row -->
                        </div>

                        <!-- Text -->
                        <p class="mb-3">
                            I've been working on shipping the latest version of Launchday. The story I'm trying to focus on is something like "You're launching soon and need to be 100% focused on your product. Don't lose precious days designing, coding, and testing a product site. Instead, build one in minutes."
                        </p>

                        <p class="mb-4">
                            What do you y'all think? Would love some feedback from <a href="#!" class="badge badge-soft-primary">@Ab</a> or <a href="#!" class="badge badge-soft-primary">@Adolfo</a>?
                        </p>

                        <!-- Image -->
                        <p class="text-center mb-3">
                            <img src="${pageContext.request.contextPath}/assets/img/posts/post-1.jpg" alt="..." class="img-fluid rounded">
                        </p>

                        <!-- Buttons -->
                        <div class="mb-3">
                            <div class="row">
                                <div class="col">

                                    <a href="#!" class="btn btn-sm btn-white">
                                        😬 1
                                    </a>
                                    <a href="#!" class="btn btn-sm btn-white">
                                        👍 2
                                    </a>
                                    <a href="#!" class="btn btn-sm btn-white">
                                        Add Reaction
                                    </a>

                                </div>
                                <div class="col-auto mr--3">

                                    <div class="avatar-group d-none d-sm-flex">
                                        <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="" data-original-title="Ab Hadley">
                                            <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-2.jpg" alt="..." class="avatar-img rounded-circle border border-white">
                                        </a>
                                        <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="" data-original-title="Adolfo Hess">
                                            <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-3.jpg" alt="..." class="avatar-img rounded-circle border border-white">
                                        </a>
                                        <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="" data-original-title="Daniela Dewitt">
                                            <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-4.jpg" alt="..." class="avatar-img rounded-circle border border-white">
                                        </a>
                                        <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="" data-original-title="Miyah Myles">
                                            <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-5.jpg" alt="..." class="avatar-img rounded-circle border border-white">
                                        </a>
                                    </div>

                                </div>
                                <div class="col-auto">

                                    <a href="#!" class="btn btn-sm btn-white">
                                        Share
                                    </a>

                                </div>
                            </div> <!-- / .row -->
                        </div>

                        <!-- Divider -->
                        <hr>

                        <!-- Comments -->

                        <div class="comment mb-3">
                            <div class="row">
                                <div class="col-auto">

                                    <!-- Avatar -->
                                    <a class="avatar" href="profile-posts.html">
                                        <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-2.jpg" alt="..." class="avatar-img rounded-circle">
                                    </a>

                                </div>
                                <div class="col ml--2">

                                    <!-- Body -->
                                    <div class="comment-body">

                                        <div class="row">
                                            <div class="col">

                                                <!-- Title -->
                                                <h5 class="comment-title">
                                                    Ab Hadley
                                                </h5>

                                            </div>
                                            <div class="col-auto">

                                                <!-- Time -->
                                                <time class="comment-time">
                                                    11:12
                                                </time>

                                            </div>
                                        </div> <!-- / .row -->

                                        <!-- Text -->
                                        <p class="comment-text">
                                            Looking good Dianna! I like the image grid on the left, but it feels like a lot to process and doesn't really <em>show</em> me what the product does? I think using a short looping video or something similar demo'ing the product might be better?
                                        </p>

                                    </div>

                                </div>
                            </div> <!-- / .row -->
                        </div>

                        <div class="comment mb-3">
                            <div class="row">
                                <div class="col-auto">

                                    <!-- Avatar -->
                                    <a class="avatar" href="profile-posts.html">
                                        <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-3.jpg" alt="..." class="avatar-img rounded-circle">
                                    </a>

                                </div>
                                <div class="col ml--2">

                                    <!-- Body -->
                                    <div class="comment-body">

                                        <div class="row">
                                            <div class="col">

                                                <!-- Title -->
                                                <h5 class="comment-title">
                                                    Adolfo Hess
                                                </h5>

                                            </div>
                                            <div class="col-auto">

                                                <!-- Time -->
                                                <time class="comment-time">
                                                    11:12
                                                </time>

                                            </div>
                                        </div> <!-- / .row -->

                                        <!-- Text -->
                                        <p class="comment-text">
                                            Any chance you're going to link the grid up to a public gallery of sites built with Launchday?
                                        </p>

                                    </div>

                                </div>
                            </div> <!-- / .row -->
                        </div>

                        <!-- Divider -->
                        <hr>

                        <!-- Form -->
                        <div class="row align-items-start">
                            <div class="col-auto">

                                <!-- Avatar -->
                                <div class="avatar">
                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-1.jpg" alt="..." class="avatar-img rounded-circle">
                                </div>

                            </div>
                            <div class="col ml--2">

                                <!-- Input -->
                                <form>
                                    <label class="sr-only">Leave a comment...</label>
                                    <textarea class="form-control" placeholder="Leave a comment" rows="2"></textarea>
                                </form>

                            </div>
                        </div> <!-- / .row -->

                    </div>
                </div>
            </div>
            <!-- Freaking Farms -->
            <div class="farms nav-link-data" data-toggle="lists" data-lists-values="[&quot;name&quot;]" style="width:100%;">
                <div class="container-fluid" data-toggle="lists" data-lists-class="listAlias" data-lists-values="[&quot;name&quot;]">
                    <div class="row mb-4">
                        <div class="col">

                            <!-- Form -->
                            <form>
                                <div class="input-group input-group-lg input-group-merge">
                                    <input type="text" class="form-control form-control-prepended search" placeholder="Search">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <span class="fe fe-search"></span>
                                        </div>
                                    </div>
                                </div>
                            </form>

                        </div>
                        <div class="col-auto">

                            <!-- Navigation (button group) -->
                            <div class="nav btn-group" role="tablist">
                                <button class="btn btn-lg btn-white active show" data-toggle="tab" data-target="#tabPaneOne" role="tab" aria-controls="tabPaneOne" aria-selected="true">
                                    <span class="fe fe-grid"></span>
                                </button>
                                <button class="btn btn-lg btn-white" data-toggle="tab" data-target="#tabPaneTwo" role="tab" aria-controls="tabPaneTwo" aria-selected="false">
                                    <span class="fe fe-list"></span>
                                </button>
                            </div> <!-- / .nav -->

                        </div>
                        <button type="button" class="btn btn-success btn-primary btn-lg" style="margin-right: 13px">
                            New
                        </button>
                    </div> <!-- / .row -->

                    <!-- Tab content -->
                    <div class="tab-content">
                        <div class="tab-pane fade active show" id="tabPaneOne" role="tabpanel">
                            <div class="row listAlias"><div class="col-12 col-md-6 col-xl-4">

                                <!-- Card -->
                                <div class="card">
                                    <a href="project-overview.html">
                                        <img src="${pageContext.request.contextPath}/assets/img/avatars/projects/project-1.jpg" alt="..." class="card-img-top">
                                    </a>
                                    <div class="card-body">
                                        <div class="row align-items-center">
                                            <div class="col">

                                                <!-- Title -->
                                                <h4 class="card-title mb-2 name">
                                                    <a href="project-overview.html">Homepage Redesign</a>
                                                </h4>

                                                <!-- Subtitle -->
                                                <p class="card-text small text-muted">
                                                    Updated 4hr ago
                                                </p>

                                            </div>
                                            <div class="col-auto">

                                                <!-- Dropdown -->
                                                <div class="dropdown">
                                                    <a href="#!" class="dropdown-ellipses dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <i class="fe fe-more-vertical"></i>
                                                    </a>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <a href="#!" class="dropdown-item">
                                                            Action
                                                        </a>
                                                        <a href="#!" class="dropdown-item">
                                                            Another action
                                                        </a>
                                                        <a href="#!" class="dropdown-item">
                                                            Something else here
                                                        </a>
                                                    </div>
                                                </div>

                                            </div>
                                        </div> <!-- / .row -->

                                        <!-- Divider -->
                                        <hr>

                                        <div class="row align-items-center">
                                            <div class="col">
                                                <div class="row align-items-center no-gutters">
                                                    <div class="col-auto">

                                                        <div class="small mr-2">29%</div>

                                                    </div>
                                                    <div class="col">

                                                        <!-- Progress -->
                                                        <div class="progress progress-sm">
                                                            <div class="progress-bar" role="progressbar" style="width: 29%" aria-valuenow="29" aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>

                                                    </div>
                                                </div> <!-- / .row -->
                                            </div>
                                            <div class="col-auto">

                                                <!-- Avatar group -->
                                                <div class="avatar-group">
                                                    <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="" data-original-title="Ab Hadley">
                                                        <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-2.jpg" alt="..." class="avatar-img rounded-circle border border-white">
                                                    </a>
                                                    <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="" data-original-title="Adolfo Hess">
                                                        <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-3.jpg" alt="..." class="avatar-img rounded-circle border border-white">
                                                    </a>
                                                    <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="" data-original-title="Daniela Dewitt">
                                                        <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-4.jpg" alt="..." class="avatar-img rounded-circle border border-white">
                                                    </a>
                                                    <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="" data-original-title="Miyah Myles">
                                                        <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-5.jpg" alt="..." class="avatar-img rounded-circle border border-white">
                                                    </a>
                                                </div>

                                            </div>
                                        </div> <!-- / .row -->

                                    </div> <!-- / .card-body -->
                                </div>

                            </div><div class="col-12 col-md-6 col-xl-4">

                                <!-- Card -->
                                <div class="card">
                                    <a href="project-overview.html">
                                        <img src="${pageContext.request.contextPath}/assets/img/avatars/projects/project-2.jpg" alt="..." class="card-img-top">
                                    </a>
                                    <div class="card-body">
                                        <div class="row align-items-center">
                                            <div class="col">

                                                <!-- Title -->
                                                <h4 class="card-title mb-2 name">
                                                    <a href="project-overview.html">Travels &amp; Time</a>
                                                </h4>

                                                <!-- Subtitle -->
                                                <p class="card-text small text-muted">
                                                    Updated 4hr ago
                                                </p>

                                            </div>
                                            <div class="col-auto">

                                                <!-- Dropdown -->
                                                <div class="dropdown">
                                                    <a href="#!" class="dropdown-ellipses dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <i class="fe fe-more-vertical"></i>
                                                    </a>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <a href="#!" class="dropdown-item">
                                                            Action
                                                        </a>
                                                        <a href="#!" class="dropdown-item">
                                                            Another action
                                                        </a>
                                                        <a href="#!" class="dropdown-item">
                                                            Something else here
                                                        </a>
                                                    </div>
                                                </div>

                                            </div>
                                        </div> <!-- / .row -->

                                        <!-- Divider -->
                                        <hr>

                                        <div class="row align-items-center">
                                            <div class="col">
                                                <div class="row align-items-center no-gutters">
                                                    <div class="col-auto">

                                                        <div class="small mr-2">77%</div>

                                                    </div>
                                                    <div class="col">

                                                        <!-- Progress -->
                                                        <div class="progress progress-sm">
                                                            <div class="progress-bar" role="progressbar" style="width: 77%" aria-valuenow="77" aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>

                                                    </div>
                                                </div> <!-- / .row -->
                                            </div>
                                            <div class="col-auto">

                                                <!-- Avatar group -->
                                                <div class="avatar-group">
                                                    <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="" data-original-title="Ab Hadley">
                                                        <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-2.jpg" alt="..." class="avatar-img rounded-circle border border-white">
                                                    </a>
                                                    <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="" data-original-title="Adolfo Hess">
                                                        <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-3.jpg" alt="..." class="avatar-img rounded-circle border border-white">
                                                    </a>
                                                    <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="" data-original-title="Daniela Dewitt">
                                                        <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-4.jpg" alt="..." class="avatar-img rounded-circle border border-white">
                                                    </a>
                                                    <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="" data-original-title="Miyah Myles">
                                                        <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-5.jpg" alt="..." class="avatar-img rounded-circle border border-white">
                                                    </a>
                                                </div>

                                            </div>
                                        </div> <!-- / .row -->

                                    </div> <!-- / .card-body -->
                                </div>

                            </div></div> <!-- / .row -->
                        </div>
                        <div class="tab-pane fade" id="tabPaneTwo" role="tabpanel">
                            <div class="row list"><div class="col-12">

                                <div class="card">
                                    <div class="card-body">
                                        <div class="row align-items-center">
                                            <div class="col-auto">

                                                <!-- Avatar -->
                                                <a href="project-overview.html" class="avatar avatar-lg avatar-4by3">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/projects/project-1.jpg" alt="..." class="avatar-img rounded">
                                                </a>

                                            </div>
                                            <div class="col ml--2">

                                                <!-- Title -->
                                                <h4 class="card-title mb-1 name">
                                                    <a href="project-overview.html">Homepage Redesign</a>
                                                </h4>

                                                <!-- Text -->
                                                <p class="card-text small text-muted mb-1">
                                                    <time datetime="2018-06-21">Updated 2hr ago</time>
                                                </p>

                                                <!-- Progress -->
                                                <div class="row align-items-center no-gutters">
                                                    <div class="col-auto">

                                                        <div class="small mr-2">29%</div>

                                                    </div>
                                                    <div class="col">

                                                        <!-- Progress -->
                                                        <div class="progress progress-sm">
                                                            <div class="progress-bar" role="progressbar" style="width: 29%" aria-valuenow="29" aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>

                                                    </div>
                                                </div> <!-- / .row -->

                                            </div>
                                            <div class="col-auto">

                                                <!-- Avatar group -->
                                                <div class="avatar-group d-none d-md-inline-flex">
                                                    <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="" data-original-title="Ab Hadley">
                                                        <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-2.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                    </a>
                                                    <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="" data-original-title="Adolfo Hess">
                                                        <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-3.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                    </a>
                                                    <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="" data-original-title="Daniela Dewitt">
                                                        <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-4.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                    </a>
                                                    <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="" data-original-title="Miyah Myles">
                                                        <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-5.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                    </a>
                                                </div>

                                            </div>
                                            <div class="col-auto">

                                                <!-- Dropdown -->
                                                <div class="dropdown">
                                                    <a href="#!" class="dropdown-ellipses dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <i class="fe fe-more-vertical"></i>
                                                    </a>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <a href="#!" class="dropdown-item">
                                                            Action
                                                        </a>
                                                        <a href="#!" class="dropdown-item">
                                                            Another action
                                                        </a>
                                                        <a href="#!" class="dropdown-item">
                                                            Something else here
                                                        </a>
                                                    </div>
                                                </div>

                                            </div>
                                        </div> <!-- / .row -->
                                    </div> <!-- / .card-body -->
                                </div>

                            </div><div class="col-12">

                                <div class="card">
                                    <div class="card-body">
                                        <div class="row align-items-center">
                                            <div class="col-auto">

                                                <!-- Avatar -->
                                                <a href="project-overview.html" class="avatar avatar-lg avatar-4by3">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/projects/project-2.jpg" alt="..." class="avatar-img rounded">
                                                </a>

                                            </div>
                                            <div class="col ml--2">

                                                <!-- Title -->
                                                <h4 class="card-title mb-1 name">
                                                    <a href="project-overview.html">Travels &amp; Time</a>
                                                </h4>

                                                <!-- Text -->
                                                <p class="card-text small text-muted mb-1">
                                                    <time datetime="2018-06-21">Updated 5hr ago</time>
                                                </p>

                                                <!-- Progress -->
                                                <div class="row align-items-center no-gutters">
                                                    <div class="col-auto">

                                                        <div class="small mr-2">77%</div>

                                                    </div>
                                                    <div class="col">

                                                        <!-- Progress -->
                                                        <div class="progress progress-sm">
                                                            <div class="progress-bar" role="progressbar" style="width: 77%" aria-valuenow="77" aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>

                                                    </div>
                                                </div> <!-- / .row -->

                                            </div>
                                            <div class="col-auto">

                                                <!-- Avatar group -->
                                                <div class="avatar-group d-none d-md-inline-flex">
                                                    <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="" data-original-title="Ab Hadley">
                                                        <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-2.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                    </a>
                                                    <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="" data-original-title="Adolfo Hess">
                                                        <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-3.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                    </a>
                                                    <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="" data-original-title="Daniela Dewitt">
                                                        <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-4.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                    </a>
                                                    <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="" data-original-title="Miyah Myles">
                                                        <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-5.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                    </a>
                                                </div>

                                            </div>
                                            <div class="col-auto">

                                                <!-- Dropdown -->
                                                <div class="dropdown">
                                                    <a href="#!" class="dropdown-ellipses dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <i class="fe fe-more-vertical"></i>
                                                    </a>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <a href="#!" class="dropdown-item">
                                                            Action
                                                        </a>
                                                        <a href="#!" class="dropdown-item">
                                                            Another action
                                                        </a>
                                                        <a href="#!" class="dropdown-item">
                                                            Something else here
                                                        </a>
                                                    </div>
                                                </div>

                                            </div>
                                        </div> <!-- / .row -->
                                    </div> <!-- / .card-body -->
                                </div>

                            </div></div> <!-- / .row -->
                        </div>
                    </div> <!-- / .tab-content -->

                </div> <!-- / .container-fluid -->
            </div>
            <!-- Freaking Notifications -->
            <div class="notis nav-link-data col-12">

                <!-- Files -->
                <div class="card" data-toggle="lists" data-lists-values="[&quot;name&quot;]">
                    <div class="card-header">
                        <div class="row align-items-center">
                            <div class="col">

                                <!-- Title -->
                                <h4 class="card-header-title">
                                    Files
                                </h4>

                            </div>
                            <div class="col-auto">

                                <!-- Dropdown -->
                                <div class="dropdown">

                                    <!-- Toggle -->
                                    <a href="#!" class="small text-muted dropdown-toggle" data-toggle="dropdown">
                                        Sort order
                                    </a>

                                    <!-- Menu -->
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item sort" data-sort="name" href="#!">
                                            Asc
                                        </a>
                                        <a class="dropdown-item sort" data-sort="name" href="#!">
                                            Desc
                                        </a>
                                    </div>

                                </div>

                            </div>
                            <div class="col-auto">

                                <!-- Button -->
                                <a href="#!" class="btn btn-sm btn-primary">
                                    Upload
                                </a>

                            </div>
                        </div> <!-- / .row -->
                    </div>
                    <div class="card-header">
                        <div class="row">
                            <div class="col-12">

                                <!-- Form -->
                                <form>
                                    <div class="input-group input-group-flush input-group-merge">
                                        <input type="search" class="form-control form-control-prepended search" placeholder="Search">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text">
                                                <span class="fe fe-search"></span>
                                            </div>
                                        </div>
                                    </div>
                                </form>

                            </div>
                        </div> <!-- / .row -->
                    </div>
                    <div class="card-body">

                        <!-- List -->
                        <ul class="list-group list-group-lg list-group-flush list my--4"><li class="list-group-item px-0">

                            <div class="row align-items-center">
                                <div class="col-auto">

                                    <!-- Avatar -->
                                    <a href="#!" class="avatar avatar-lg">
                                        <img src="${pageContext.request.contextPath}/assets/img/files/file-1.jpg" alt="..." class="avatar-img rounded">
                                    </a>

                                </div>
                                <div class="col ml--2">

                                    <!-- Title -->
                                    <h4 class="card-title mb-1 name">
                                        <a href="#!">Launchday Logo</a>
                                    </h4>

                                    <!-- Text -->
                                    <p class="card-text small text-muted mb-1">
                                        2.5kb SVG
                                    </p>

                                    <!-- Time -->
                                    <p class="card-text small text-muted">
                                        Uploaded by Dianna Smiley on <time datetime="2018-01-03">Jan 3, 2018</time>
                                    </p>

                                </div>
                                <div class="col-auto">

                                    <!-- Button -->
                                    <a href="#!" class="btn btn-sm btn-white d-none d-md-inline-block">
                                        Download
                                    </a>

                                </div>
                                <div class="col-auto">

                                    <!-- Dropdown -->
                                    <div class="dropdown">
                                        <a href="#!" class="dropdown-ellipses dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fe fe-more-vertical"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a href="#!" class="dropdown-item">
                                                Action
                                            </a>
                                            <a href="#!" class="dropdown-item">
                                                Another action
                                            </a>
                                            <a href="#!" class="dropdown-item">
                                                Something else here
                                            </a>
                                        </div>
                                    </div>

                                </div>
                            </div> <!-- / .row -->

                        </li><li class="list-group-item px-0">

                            <div class="row align-items-center">
                                <div class="col-auto">

                                    <!-- Avatar -->
                                    <a href="#!" class="avatar avatar-lg">
                                        <img src="${pageContext.request.contextPath}/assets/img/files/file-2.jpg" alt="..." class="avatar-img rounded">
                                    </a>

                                </div>
                                <div class="col ml--2">

                                    <!-- Title -->
                                    <h4 class="card-title mb-1 name">
                                        <a href="#!">Example Grid</a>
                                    </h4>

                                    <!-- Text -->
                                    <p class="card-text small text-muted mb-1">
                                        1.5mb PNG
                                    </p>

                                    <!-- Time -->
                                    <p class="card-text small text-muted">
                                        Uploaded by Dianna Smiley on <time datetime="2018-01-03">Jan 3, 2018</time>
                                    </p>

                                </div>
                                <div class="col-auto">

                                    <!-- Button -->
                                    <a href="#!" class="btn btn-sm btn-white d-none d-md-inline-block">
                                        Download
                                    </a>

                                </div>
                                <div class="col-auto">

                                    <!-- Dropdown -->
                                    <div class="dropdown">
                                        <a href="#!" class="dropdown-ellipses dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fe fe-more-vertical"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a href="#!" class="dropdown-item">
                                                Action
                                            </a>
                                            <a href="#!" class="dropdown-item">
                                                Another action
                                            </a>
                                            <a href="#!" class="dropdown-item">
                                                Something else here
                                            </a>
                                        </div>
                                    </div>

                                </div>
                            </div> <!-- / .row -->

                        </li><li class="list-group-item px-0">

                            <div class="row align-items-center">
                                <div class="col-auto">

                                    <!-- Avatar -->
                                    <a href="#!" class="avatar avatar-lg">
                          <span class="avatar-title rounded bg-white text-secondary">
                            <span class="fe fe-folder"></span>
                          </span>
                                    </a>

                                </div>
                                <div class="col ml--2">

                                    <!-- Title -->
                                    <h4 class="card-title mb-1 name">
                                        <a href="#!">Screenshot Collection</a>
                                    </h4>

                                    <!-- Text -->
                                    <p class="card-text small text-muted mb-1">
                                        6.9mb directory
                                    </p>

                                    <!-- Time -->
                                    <p class="card-text small text-muted">
                                        Uploaded by Dianna Smiley on <time datetime="2018-01-03">Jan 3, 2018</time>
                                    </p>

                                </div>
                                <div class="col-auto">

                                    <!-- Button -->
                                    <a href="#!" class="btn btn-sm btn-white d-none d-md-inline-block">
                                        Download
                                    </a>

                                </div>
                                <div class="col-auto">

                                    <!-- Dropdown -->
                                    <div class="dropdown">
                                        <a href="#!" class="dropdown-ellipses dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fe fe-more-vertical"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a href="#!" class="dropdown-item">
                                                Action
                                            </a>
                                            <a href="#!" class="dropdown-item">
                                                Another action
                                            </a>
                                            <a href="#!" class="dropdown-item">
                                                Something else here
                                            </a>
                                        </div>
                                    </div>

                                </div>
                            </div> <!-- / .row -->

                        </li><li class="list-group-item px-0">

                            <div class="row align-items-center">
                                <div class="col-auto">

                                    <!-- Avatar -->
                                    <a href="#!" class="avatar avatar-lg">
                          <span class="avatar-title rounded bg-white text-secondary">
                            <span class="fe fe-package"></span>
                          </span>
                                    </a>

                                </div>
                                <div class="col ml--2">

                                    <!-- Title -->
                                    <h4 class="card-title mb-1 name">
                                        <a href="#!">Database migration (compressed)</a>
                                    </h4>

                                    <!-- Text -->
                                    <p class="card-text small text-muted mb-1">
                                        5.9mb ZIP
                                    </p>

                                    <!-- Time -->
                                    <p class="card-text small text-muted">
                                        Uploaded by Dianna Smiley on <time datetime="2018-01-03">Jan 3, 2018</time>
                                    </p>

                                </div>
                                <div class="col-auto">

                                    <!-- Button -->
                                    <a href="#!" class="btn btn-sm btn-white d-none d-md-inline-block">
                                        Download
                                    </a>

                                </div>
                                <div class="col-auto">

                                    <!-- Dropdown -->
                                    <div class="dropdown">
                                        <a href="#!" class="dropdown-ellipses dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fe fe-more-vertical"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a href="#!" class="dropdown-item">
                                                Action
                                            </a>
                                            <a href="#!" class="dropdown-item">
                                                Another action
                                            </a>
                                            <a href="#!" class="dropdown-item">
                                                Something else here
                                            </a>
                                        </div>
                                    </div>

                                </div>
                            </div> <!-- / .row -->

                        </li><li class="list-group-item px-0">

                            <div class="row align-items-center">
                                <div class="col-auto">

                                    <!-- Avatar -->
                                    <a href="#!" class="avatar avatar-lg">
                                        <img src="${pageContext.request.contextPath}/assets/img/files/file-3.jpg" alt="..." class="avatar-img rounded">
                                    </a>

                                </div>
                                <div class="col ml--2">

                                    <!-- Title -->
                                    <h4 class="card-title mb-1 name">
                                        <a href="#!">Launchday Cover</a>
                                    </h4>

                                    <!-- Text -->
                                    <p class="card-text small text-muted mb-1">
                                        750kb JPG
                                    </p>

                                    <!-- Time -->
                                    <p class="card-text small text-muted">
                                        Uploaded by Dianna Smiley on <time datetime="2018-01-03">Jan 3, 2018</time>
                                    </p>

                                </div>
                                <div class="col-auto">

                                    <!-- Button -->
                                    <a href="#!" class="btn btn-sm btn-white d-none d-md-inline-block">
                                        Download
                                    </a>

                                </div>
                                <div class="col-auto">

                                    <!-- Dropdown -->
                                    <div class="dropdown">
                                        <a href="#!" class="dropdown-ellipses dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fe fe-more-vertical"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a href="#!" class="dropdown-item">
                                                Action
                                            </a>
                                            <a href="#!" class="dropdown-item">
                                                Another action
                                            </a>
                                            <a href="#!" class="dropdown-item">
                                                Something else here
                                            </a>
                                        </div>
                                    </div>

                                </div>
                            </div> <!-- / .row -->

                        </li><li class="list-group-item px-0">

                            <div class="row align-items-center">
                                <div class="col-auto">

                                    <!-- Avatar -->
                                    <a href="#!" class="avatar avatar-lg">
                          <span class="avatar-title rounded bg-white text-secondary">
                            <span class="fe fe-film"></span>
                          </span>
                                    </a>

                                </div>
                                <div class="col ml--2">

                                    <!-- Title -->
                                    <h4 class="card-title mb-1 name">
                                        <a href="#!">Prototype Screencap</a>
                                    </h4>

                                    <!-- Text -->
                                    <p class="card-text small text-muted mb-1">
                                        23.5mb MOV
                                    </p>

                                    <!-- Time -->
                                    <p class="card-text small text-muted">
                                        Uploaded by Dianna Smiley on <time datetime="2018-01-03">Jan 3, 2018</time>
                                    </p>

                                </div>
                                <div class="col-auto">

                                    <!-- Button -->
                                    <a href="#!" class="btn btn-sm btn-white d-none d-md-inline-block">
                                        Download
                                    </a>

                                </div>
                                <div class="col-auto">

                                    <!-- Dropdown -->
                                    <div class="dropdown">
                                        <a href="#!" class="dropdown-ellipses dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fe fe-more-vertical"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a href="#!" class="dropdown-item">
                                                Action
                                            </a>
                                            <a href="#!" class="dropdown-item">
                                                Another action
                                            </a>
                                            <a href="#!" class="dropdown-item">
                                                Something else here
                                            </a>
                                        </div>
                                    </div>

                                </div>
                            </div> <!-- / .row -->

                        </li><li class="list-group-item px-0">

                            <div class="row align-items-center">
                                <div class="col-auto">

                                    <!-- Avatar -->
                                    <a href="#!" class="avatar avatar-lg">
                                        <img src="${pageContext.request.contextPath}/assets/img/files/file-4.jpg" alt="..." class="avatar-img rounded">
                                    </a>

                                </div>
                                <div class="col ml--2">

                                    <!-- Title -->
                                    <h4 class="card-title mb-1 name">
                                        <a href="#!">Header block example</a>
                                    </h4>

                                    <!-- Text -->
                                    <p class="card-text small text-muted mb-1">
                                        1.2mb PNG
                                    </p>

                                    <!-- Time -->
                                    <p class="card-text small text-muted">
                                        Uploaded by Dianna Smiley on <time datetime="2018-01-03">Jan 3, 2018</time>
                                    </p>

                                </div>
                                <div class="col-auto">

                                    <!-- Button -->
                                    <a href="#!" class="btn btn-sm btn-white d-none d-md-inline-block">
                                        Download
                                    </a>

                                </div>
                                <div class="col-auto">

                                    <!-- Dropdown -->
                                    <div class="dropdown">
                                        <a href="#!" class="dropdown-ellipses dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fe fe-more-vertical"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a href="#!" class="dropdown-item">
                                                Action
                                            </a>
                                            <a href="#!" class="dropdown-item">
                                                Another action
                                            </a>
                                            <a href="#!" class="dropdown-item">
                                                Something else here
                                            </a>
                                        </div>
                                    </div>

                                </div>
                            </div> <!-- / .row -->

                        </li><li class="list-group-item px-0">

                            <div class="row align-items-center">
                                <div class="col-auto">

                                    <!-- Avatar -->
                                    <a href="#!" class="avatar avatar-lg">
                          <span class="avatar-title rounded bg-white text-secondary">
                            <span class="fe fe-pie-chart"></span>
                          </span>
                                    </a>

                                </div>
                                <div class="col ml--2">

                                    <!-- Title -->
                                    <h4 class="card-title mb-1 name">
                                        <a href="#!">User test results slides</a>
                                    </h4>

                                    <!-- Text -->
                                    <p class="card-text small text-muted mb-1">
                                        1.1mb PPTX
                                    </p>

                                    <!-- Time -->
                                    <p class="card-text small text-muted">
                                        Uploaded by Dianna Smiley on <time datetime="2018-01-03">Jan 3, 2018</time>
                                    </p>

                                </div>
                                <div class="col-auto">

                                    <!-- Button -->
                                    <a href="#!" class="btn btn-sm btn-white d-none d-md-inline-block">
                                        Download
                                    </a>

                                </div>
                                <div class="col-auto">

                                    <!-- Dropdown -->
                                    <div class="dropdown">
                                        <a href="#!" class="dropdown-ellipses dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fe fe-more-vertical"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a href="#!" class="dropdown-item">
                                                Action
                                            </a>
                                            <a href="#!" class="dropdown-item">
                                                Another action
                                            </a>
                                            <a href="#!" class="dropdown-item">
                                                Something else here
                                            </a>
                                        </div>
                                    </div>

                                </div>
                            </div> <!-- / .row -->

                        </li></ul>

                    </div>
                </div>

            </div>
            <!-- Freaking Setting -->
            <div class="setting nav-link-data col-12 col-lg-10 col-xl-8">
                <form class="mb-4">

                    <div class="row">
                        <div class="col-12 col-md-6">

                            <!-- First name -->
                            <div class="form-group">

                                <!-- Label -->
                                <label>
                                    First name <span class="badge badge-danger">Required</span>
                                </label>

                                <!-- Input -->
                                <input type="text" class="form-control">

                            </div>

                        </div>
                        <div class="col-12 col-md-6">

                            <!-- Last name -->
                            <div class="form-group">

                                <!-- Label -->
                                <label>
                                    Last name <span class="badge badge-danger">Required</span>
                                </label>

                                <!-- Input -->
                                <input type="text" class="form-control">

                            </div>

                        </div>
                        <div class="col-12">

                            <!-- Email address -->
                            <div class="form-group">

                                <!-- Label -->
                                <label class="mb-1">
                                    Email address
                                </label>

                                <!-- Form text -->
                                <small class="form-text text-muted">
                                    This contact will be shown to others publicly, so choose it carefully.
                                </small>

                                <!-- Input -->
                                <input type="email" class="form-control">

                            </div>

                        </div>
                        <div class="col-12 col-md-6">

                            <!-- Phone -->
                            <div class="form-group">

                                <!-- Label -->
                                <label>
                                    Phone
                                </label>

                                <!-- Input -->
                                <input type="text" class="form-control mb-3" placeholder="(___)___-____" data-mask="(000) 000-0000" autocomplete="off" maxlength="14">

                            </div>

                        </div>
                        <div class="col-12 col-md-6">

                            <!-- Birthday -->
                            <div class="form-group">

                                <!-- Label -->
                                <label>
                                    Birthday
                                </label>

                                <!-- Input -->
                                <input type="text" class="form-control flatpickr-input" data-toggle="flatpickr" readonly="readonly">

                            </div>

                        </div>
                    </div> <!-- / .row -->

                    <!-- Divider -->
                    <hr class="mt-4 mb-5">

                    <div class="row">
                        <div class="col-12 col-md-6">

                            <!-- Public profile -->
                            <div class="form-group">

                                <!-- Label -->
                                <label class="mb-1">
                                    Public profile
                                </label>

                                <!-- Form text -->
                                <small class="form-text text-muted">
                                    Making your profile public means that anyone on the Dashkit network will be able to find you.
                                </small>

                                <div class="row">
                                    <div class="col-auto">

                                        <!-- Toggle -->
                                        <div class="custom-control custom-checkbox-toggle">
                                            <input type="checkbox" class="custom-control-input" id="toggleOne">
                                            <label class="custom-control-label" for="toggleOne"></label>
                                        </div>

                                    </div>
                                    <div class="col ml--2">

                                        <!-- Help text -->
                                        <small class="text-muted">
                                            You're currently invisible
                                        </small>

                                    </div>
                                </div> <!-- / .row -->
                            </div>

                        </div>
                        <div class="col-12 col-md-6">

                            <!-- Allow for additional Bookings -->
                            <div class="form-group">

                                <!-- Label -->
                                <label class="mb-1">
                                    Allow for additional Bookings
                                </label>

                                <!-- Form text -->
                                <small class="form-text text-muted">
                                    If you are available for hire outside of the current situation, you can encourage others to hire you.
                                </small>

                                <div class="row">
                                    <div class="col-auto">

                                        <!-- Toggle -->
                                        <div class="custom-control custom-checkbox-toggle">
                                            <input type="checkbox" class="custom-control-input" id="toggleTwo" checked="">
                                            <label class="custom-control-label" for="toggleTwo"></label>
                                        </div>

                                    </div>
                                    <div class="col ml--2">

                                        <!-- Help text -->
                                        <small class="text-muted">
                                            You're currently available
                                        </small>

                                    </div>
                                </div> <!-- / .row -->
                            </div>

                        </div>
                    </div> <!-- / .row -->

                    <!-- Divider -->
                    <hr class="mt-4 mb-5">

                    <div class="row">
                        <div class="col-12 col-md-6 order-md-2">

                            <!-- Card -->
                            <div class="card bg-light border ml-md-4">
                                <div class="card-body">

                                    <p class="mb-2">
                                        Password requirements
                                    </p>

                                    <p class="small text-muted mb-2">
                                        To create a new password, you have to meet all of the following requirements:
                                    </p>

                                    <ul class="small text-muted pl-4 mb-0">
                                        <li>
                                            Minimum 8 character
                                        </li>
                                        <li>
                                            At least one special character
                                        </li>
                                        <li>
                                            At least one number
                                        </li>
                                        <li>
                                            Can’t be the same as a previous password
                                        </li>
                                    </ul>

                                </div>
                            </div>

                        </div>
                        <div class="col-12 col-md-6">

                            <!-- Password -->
                            <div class="form-group">

                                <!-- Label -->
                                <label>
                                    Password
                                </label>

                                <!-- Input -->
                                <input type="password" class="form-control">

                            </div>

                            <!-- New password -->
                            <div class="form-group">

                                <!-- Label -->
                                <label>
                                    New password
                                </label>

                                <!-- Input -->
                                <input type="password" class="form-control">

                            </div>

                            <!-- Confirm new password -->
                            <div class="form-group">

                                <!-- Label -->
                                <label>
                                    Confirm new password
                                </label>

                                <!-- Input -->
                                <input type="password" class="form-control">

                            </div>

                            <!-- Submit -->
                            <button type="submit" class="btn btn-primary" style="float: right;">
                                Update password
                            </button>

                        </div>
                    </div> <!-- / .row -->

                </form>
            </div>
        </div>
    </div> <!-- / .container-fluid -->

</div> <!-- / .main-content -->

<!-- JAVASCRIPT
================================================== -->
<!-- Libs JS -->
<script src="${pageContext.request.contextPath}/assets/libs/jquery/dist/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/libs/chart.js/dist/Chart.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/libs/chart.js/Chart.extension.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/libs/highlight/highlight.pack.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/libs/flatpickr/dist/flatpickr.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/libs/jquery-mask-plugin/dist/jquery.mask.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/libs/list.js/dist/list.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/libs/quill/dist/quill.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/libs/dropzone/dist/min/dropzone.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/libs/select2/dist/js/select2.min.js"></script>

<!-- Theme JS -->
<script src="${pageContext.request.contextPath}/assets/js/theme.min.js"></script>
<script>
    $(document).ready(function() {
        $(".cust_dz .dz-message").html('<div style="font-size:35px;text-align:center;position:absolute;display:table;margin-top:50%;margin-left:50%;transform: translate(-10px,-28px);">+</div>');

        $(".nav-link-data").slideUp(0);
        $(".profile-info-row .posts").slideDown(500);
        $("#posts").on("click", function() {
            $('.nav-link-data').slideUp(500);
            $('.nav-link').removeClass("active");
            $(this).addClass("active");
            setTimeout(function(){$(".profile-info-row .posts").slideDown(500)}, 500);
        });
        $("#farms").on("click", function() {
            $('.nav-link-data').slideUp(500);
            $('.nav-link').removeClass("active");
            $(this).addClass("active");
            setTimeout(function(){$(".profile-info-row .farms").slideDown(500)}, 500);
        });
        $("#notis").on("click", function() {
            $('.nav-link-data').slideUp(500);
            $('.nav-link').removeClass("active");
            $(this).addClass("active");
            setTimeout(function(){$(".profile-info-row .notis").slideDown(500)}, 500);
        });
        $("#setting").on("click", function() {
            $('.nav-link-data').slideUp(500);
            $('.nav-link').removeClass("active");
            $(this).addClass("active");
            setTimeout(function(){$(".profile-info-row .setting").slideDown(500)}, 500);
        });
    });

</script>
</body>
</html>
