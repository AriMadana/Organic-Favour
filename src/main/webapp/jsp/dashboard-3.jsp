<%@ page import="com.mapbox.geojson.Point" %>
<%

%>
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
    <script src='https://api.mapbox.com/mapbox-gl-js/v0.47.0/mapbox-gl.js'></script>
    <link href='https://api.mapbox.com/mapbox-gl-js/v0.47.0/mapbox-gl.css' rel='stylesheet' />
    <title>Dashkit</title>
    <style>
        #map .mapboxgl-canvas-container .mapboxgl-canvas {
            border-bottom-left-radius: 0px;
            border-bottom-right-radius: 0px;
        }
        .filter-ctrl {
            position: absolute;
            top: 70px;
            left: 10px;
            z-index: 1;
            width: 180px;
        }

        .filter-ctrl input[type=text] {
            font: 12px/20px 'Helvetica Neue', Arial, Helvetica, sans-serif;
            width: 100%;
            border: 0;
            background-color: #fff;
            height: 40px;
            margin: 0;
            color: rgba(0,0,0,.5);
            padding: 10px;
            box-shadow: 0 0 0 2px rgba(0,0,0,0.1);
            border-radius: 3px;
        }
        .mapboxgl-popup {
            max-width: 400px;
            font: 12px/20px 'Helvetica Neue', Arial, Helvetica, sans-serif;
        }
        .second-post-form.right {
            -webkit-transform: translateX(200%);
            -moz-transform: translateX(200%);
            -ms-transform: translateX(200%);
            -o-transform: translateX(200%);
            transform: translateX(200%);
            -webkit-transition: -webkit-transform 0.5s ease-in; /* Safari */
            transition: transform 0.5s ease-in;
        }
        .first-post-form.left {
            -webkit-transform: translateX(-200%);
            -moz-transform: translateX(-200%);
            -ms-transform: translateX(-200%);
            -o-transform: translateX(-200%);
            transform: translateX(-200%);
            -webkit-transition: -webkit-transform 0.5s ease-out; /* Safari */
            transition: transform 0.5s ease-out;
        }
        .second-post-form {
            -webkit-transition: -webkit-transform 0.5s ease-out; /* Safari */
            transition: transform 0.5s ease-out;
        }
        .first-post-form {
            -webkit-transition: -webkit-transform 0.5s ease-in; /* Safari */
            transition: transform 0.5s ease-in;
        }
    </style>
</head>
<body>
<!-- Messages -->
<div class="modal fade" id="messages-modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-vertical" role="document">
        <div class="modal-content">
            <iframe src="conversations" style="border:none;" height="100%" width="100%"></iframe>
        </div>
    </div>
</div>

<div class="modal fade" id="newSellPost" tabindex="-1" role="dialog" style="display: none;" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content first-post-form" style="background: transparent;position:absolute;left:0;">
            <div class="modal-card card">
                <div class="card-header">
                    <div class="row align-items-center">
                        <div class="col-auto">

                            <!-- Close -->
                            <button type="button" class="close btn-sm" data-dismiss="modal" aria-label="Close">
                                <span class="fe fe-power" style="font-size: 20px;"></span>
                            </button>

                        </div>
                        <div class="col" style="text-align:center;">

                            <!-- Title -->
                            <h4 class="card-header-title" id="exampleModalCenterTitle">
                                <span class="fe fe-package mr-2"></span>Add a Post
                            </h4>

                        </div>
                        <div class="col-auto">

                            <!-- Close -->
                            <button type="button" class="close next-farm-form">
                                <span class="fe fe-arrow-right"></span>
                            </button>

                        </div>
                    </div> <!-- / .row -->
                    <%--<select class="form-control" data-toggle="select" multiple>--%>
                    <%--<option data-select2-id="19">CSS</option>--%>
                    <%--<option data-select2-id="20">HTML</option>--%>
                    <%--<option data-select2-id="21">JavaScript</option>--%>
                    <%--<option data-select2-id="22">Bootstrap</option>--%>
                    <%--</select>--%>
                </div>
                <div class="card-body">
                    <!-- Freaking Farms -->
                    <div class="container-fluid" data-toggle="lists" data-lists-class="listAlias" data-lists-values="[&quot;name&quot;]">
                        <div class="row mb-4">
                            <div class="col" style="margin-right:-20px;">

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
                                <%--<div class="nav btn-group" role="tablist">--%>
                                <%--<button class="btn btn-lg btn-white active show" data-toggle="tab" data-target="#tabPaneOne" role="tab" aria-controls="tabPaneOne" aria-selected="true">--%>
                                <%--<span class="fe fe-grid"></span>--%>
                                <%--</button>--%>
                                <%--<button class="btn btn-lg btn-white" data-toggle="tab" data-target="#tabPaneTwo" role="tab" aria-controls="tabPaneTwo" aria-selected="false">--%>
                                <%--<span class="fe fe-list"></span>--%>
                                <%--</button>--%>
                                <%--</div> <!-- / .nav -->--%>

                            </div>
                        </div> <!-- / .row -->
                        <div class="tab-content">
                            <div class="tab-pane fade active show" id="tabPaneOne" role="tabpanel">
                                <div class="row listAlias"><div class="col-12 col-md-6 col-xl-4">

                                    <!-- Card -->
                                    <div class="card user-farm-card">
                                        <a href="#">
                                            <img src="/organic-favour/assets/img/avatars/projects/project-1.jpg" alt="..." class="card-img-top">
                                        </a>
                                        <div class="card-body" style="padding:2px 2px 2px 2px">
                                            <div class="row align-items-center">
                                                <div class="col" style="padding:10px 15px 5px 15px;">

                                                    <!-- Title -->
                                                    <h5 class="card-title mb-2 name">
                                                        <div class="farmName" style="white-space:nowrap; overflow: hidden; text-overflow: ellipsis; ">Homepage Redesign Bar Nyar</div>
                                                    </h5>

                                                </div>
                                            </div>

                                        </div> <!-- / .card-body -->
                                    </div>

                                </div><div class="col-12 col-md-6 col-xl-4">

                                    <!-- Card -->
                                    <div class="card user-farm-card">
                                        <a href="#">
                                            <img src="/organic-favour/assets/img/avatars/projects/project-2.jpg" alt="..." class="card-img-top">
                                        </a>
                                        <div class="card-body" style="padding:2px 2px 2px 2px">
                                            <div class="row align-items-center">
                                                <div class="col" style="padding:10px 15px 5px 15px;">

                                                    <!-- Title -->
                                                    <h5 class="card-title mb-2 name">
                                                        <div class="farmName" style="white-space:nowrap; overflow: hidden; text-overflow: ellipsis; ">Travels and Time What the</div>
                                                    </h5>

                                                </div>
                                            </div> <!-- / .row -->

                                        </div> <!-- / .card-body -->
                                    </div>

                                </div></div> <!-- / .row -->
                            </div>
                        </div> <!-- / .tab-content -->

                    </div>
                    <%--<div data-toggle="quill" data-quill-placeholder="Quill WYSIWYG editor"></div>--%>
                </div>
            </div>
        </div>


        <div class="modal-content second-post-form right" style="background: transparent;position:absolute;right:0;">
            <div class="modal-card card">
                <div class="card-header">
                    <div class="row align-items-center">
                        <div class="col-auto">

                            <!-- Close -->
                            <button type="button" class="close btn-sm previous-post-form">
                                <span class="fe fe-arrow-left"></span>
                            </button>

                        </div>
                        <div class="col" style="text-align:center;">

                            <!-- Title -->
                            <h4 class="card-header-title" id="farmSelected">
                                Add a Post
                            </h4>

                        </div>
                        <div class="col-auto">

                            <!-- Close -->
                            <button type="button" class="close">
                                <span class="fe fe-check"></span>
                            </button>

                        </div>
                    </div> <!-- / .row -->
                </div>
                <div class="card-body">
                    <h2 class="mb-2" style="margin-top:-11px;padding-bottom:5px;">
                        Select<span class="badge badge-soft-primary ml-1 mt--1">Category</span>
                    </h2>
                    <select class="form-control" data-toggle="select">
                        <option>HTML</option>
                        <option>CSS3</option>
                    </select>

                    <textarea class="form-control" style="margin-top: 8px;" placeholder="Some description..." rows="2"></textarea>
                    <hr>
                    <div style="width:100%;text-align:center;margin-top:5px;">
                        <div class="btn-group btn-group-lg mr-2 mb-3" role="group" aria-label="First group">
                            <button id="pc-opt-btn1" type="button" class="pc-opt-btn btn btn-warning active">1</button>
                            <button id="pc-opt-btn2" type="button" class="pc-opt-btn btn btn-warning">2</button>
                            <button id="pc-opt-btn3" type="button" class="pc-opt-btn btn btn-warning">3</button>
                        </div>
                    </div>
                    <div class="price-option-one price-option-div">
                        <h4 style="width:100%; text-align:center;">Price Option 1</h4>
                        <div class="form-row">
                            <div class="col-5" style="display: inline;">
                                <input type="text" class="form-control" placeholder="$ 100" data-mask="#.##0,00" data-mask-reverse="true">
                            </div>
                            <div class="col-0" style="padding-top: 6px;">
                                /
                            </div>
                            <div class="col-2" style="display: inline;">
                                <input type="text" class="form-control" placeholder="10" data-mask="#.##0,00" data-mask-reverse="true">
                            </div>
                            <div class="col-0" style="padding-top: 6px;">
                                :
                            </div>
                            <div class="col-4" style="display: inline;">
                                <input type="text" class="form-control" placeholder="Bag">
                            </div>
                        </div>
                        <div class="form-row">

                        </div>
                    </div>

                    <div class="price-option-two price-option-div">
                        <h4 style="width:100%; text-align:center;">Price Option 2</h4>
                        <div class="form-row">
                            <div class="col-5" style="display: inline;">
                                <input type="text" class="form-control" placeholder="$ 100" data-mask="#.##0,00" data-mask-reverse="true">
                            </div>
                            <div class="col-0" style="padding-top: 6px;">
                                /
                            </div>
                            <div class="col-2" style="display: inline;">
                                <input type="text" class="form-control" placeholder="10" data-mask="#.##0,00" data-mask-reverse="true">
                            </div>
                            <div class="col-0" style="padding-top: 6px;">
                                :
                            </div>
                            <div class="col-4" style="display: inline;">
                                <input type="text" class="form-control" placeholder="Bag">
                            </div>
                        </div>
                        <div class="form-row">

                        </div>
                    </div>

                    <div class="price-option-three price-option-div">
                        <h4 style="width:100%; text-align:center;">Price Option 3</h4>
                        <div class="form-row">
                            <div class="col-5" style="display: inline;">
                                <input type="text" class="form-control" placeholder="$ 100" data-mask="#.##0,00" data-mask-reverse="true">
                            </div>
                            <div class="col-0" style="padding-top: 6px;">
                                /
                            </div>
                            <div class="col-2" style="display: inline;">
                                <input type="text" class="form-control" placeholder="10" data-mask="#.##0,00" data-mask-reverse="true">
                            </div>
                            <div class="col-0" style="padding-top: 6px;">
                                :
                            </div>
                            <div class="col-4" style="display: inline;">
                                <input type="text" class="form-control" placeholder="Bag">
                            </div>
                        </div>
                        <div class="form-row">

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="post-filter-modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-vertical" role="document">
        <div class="modal-content" style="margin-bottom: 0;background:#fff;">
            <div class="row justify-content-center">
                    <!-- Text -->
                    <p class="lead text-center text-muted" style="padding:20px;">
                        Items Filters
                    </p>
            </div>
            <div class="col-xs-12">
                <!-- Card -->
                <div style="margin-bottom:0;border-radius:0;" class="card">
                    <div class="card-body">
                        <div class="row align-items-center">
                            <div class="col">

                                <!-- Title -->
                                <h6 class="card-title text-uppercase text-muted mb-2">
                                    Country Filter
                                </h6>

                                <select class="form-control" data-toggle="select" title="Choose Country...">
                                    <option>...</option>
                                    <option>...</option>
                                    <option>...</option>
                                </select>

                            </div>
                            <div class="col-auto">

                                <!-- Icon -->
                                <span class="h2 fe fe-dollar-sign text-muted mb-0"></span>

                            </div>
                        </div> <!-- / .row -->

                    </div>
                </div>
            </div>
            <div class="col-xs-12">
                <!-- Card -->
                <div style="margin-bottom:0;border-radius:0;" class="card">
                    <div class="card-body">
                        <div class="row align-items-center">
                            <div class="col">

                                <!-- Title -->
                                <h6 class="card-title text-uppercase text-muted mb-2">
                                    Items Filter
                                </h6>

                                <select class="form-control" data-toggle="select" title="Choose Country...">
                                    <option>...</option>
                                    <option>...</option>
                                    <option>...</option>
                                </select>

                            </div>
                            <div class="col-auto">

                                <!-- Icon -->
                                <span class="h2 fe fe-briefcase text-muted mb-0"></span>

                            </div>
                        </div> <!-- / .row -->

                    </div>
                </div>
            </div>
            <div class="col-xs-12">
                <!-- Card -->
                <div style="margin-bottom:0;border-radius:0;" class="card">
                    <div class="card-body">
                        <div class="row align-items-center">
                            <div class="col">

                                <!-- Title -->
                                <h6 class="card-title text-uppercase text-muted mb-2">
                                    Items Filter
                                </h6>

                                <select class="form-control" data-toggle="select" title="Choose Country...">
                                    <option>...</option>
                                    <option>...</option>
                                    <option>...</option>
                                </select>

                            </div>
                            <div class="col-auto">

                                <!-- Icon -->
                                <span class="h2 fe fe-briefcase text-muted mb-0"></span>

                            </div>
                        </div> <!-- / .row -->

                    </div>
                </div>
            </div>
            <div class="col-xs-12">
                <!-- Card -->
                <div style="margin-bottom:0;border-radius:0;" class="card">
                    <div class="card-body">
                        <div class="row align-items-center">
                            <div class="col">

                                <!-- Title -->
                                <h6 class="card-title text-uppercase text-muted mb-2">
                                    Items Filter
                                </h6>

                                <select class="form-control" data-toggle="select" title="Choose Country...">
                                    <option>...</option>
                                    <option>...</option>
                                    <option>...</option>
                                </select>

                            </div>
                            <div class="col-auto">

                                <!-- Icon -->
                                <span class="h2 fe fe-briefcase text-muted mb-0"></span>

                            </div>
                        </div> <!-- / .row -->

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
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
                <a href="signin" class="btn btn-rounded-circle btn-white">
                    <span class="fe fe-user"></span>
                </a>

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
    <div class="header bg-dark pb-5" style="min-height: 100vh;">
        <div class="container">
            <div class="header-body" style="border-bottom: 0; padding-bottom: 0;">
                <div class="row">
                    <div class="col-12">
                        <div class="container-fluid">
                            <div class="row justify-content-center mt-5 mb-5">
                                <div class="col-md-10 col-lg-8 col-xl-6">

                                    <!-- Title -->
                                    <h1 class="display-3 text-center text-white">
                                        Organic Favour
                                    </h1>

                                    <!-- Text -->
                                    <p class="lead text-center text-muted">
                                        We have plans and prices that fit your business perfectly. Make your client site a success with our products.
                                    </p>

                                </div>
                            </div> <!-- / .row -->
                        </div> <!-- / .container-fluid -->
                        <!-- Orders -->
                        <div class="card" style="border:0;margin-bottom:0;">
                            <div class="card-header">
                                <div class="row align-items-center">
                                    <div class="col">

                                        <!-- Title -->
                                        <h4 class="card-header-title">
                                            Available Items to Buy/Sell
                                        </h4>

                                    </div>
                                    <div class="col-auto mr--3">
                                        <!-- Caption -->
                                        <span class="text-muted">
                                            Show affiliate:
                                        </span>
                                        <button type="button" class="btn btn-primary" data-target="#newSellPost" data-toggle="modal">
                                            <span class="fe fe-package mr-2"></span>New Post
                                        </button>
                                    </div>
                                    <div class="col-auto">


                                        <!-- Toggle -->





                                    </div>
                                </div> <!-- / .row -->

                            </div>
                            <div id='map' style='width: 100%; height: 350px;'></div>
                            <div class='filter-ctrl'>
                                <input id='filter-input' type='text' name='filter' placeholder='Filter By Item...' />
                            </div>
                        </div>

                        <!-- Without Map -->
                        <div style="border-top-left-radius: 0; border-top-right-radius: 0;" class="card">
                            <div class="card-header">
                                <div class="row align-items-center">
                                    <div class="col-3">

                                        <!-- Title -->
                                        <h4 class="card-header-title">
                                            Available Packages
                                        </h4>

                                    </div>
                                    <div class="col-6" style="text-align: center;">
                                        <div class="btn-group" role="group" aria-label="First group">
                                            <button type="button" class="btn btn-secondary active">1</button>
                                            <button type="button" class="btn btn-secondary">2</button>
                                            <button type="button" class="btn btn-secondary">3</button>
                                            <button type="button" class="btn btn-secondary">4</button>
                                            <button type="button" class="btn btn-secondary">..</button>
                                        </div>
                                    </div>
                                    <div class="col-3" style="right:0;text-align: right">

                                        <!-- Button -->
                                        <button id="filter-by" class="btn btn-sm btn-white" style="border:0;">
                                            <span class="fe fe-sliders" style="font-size: 20px;"></span>
                                        </button>

                                    </div>
                                </div> <!-- / .row -->
                            </div>
                            <div id="filter-info-div" class="card-body">
                                <div class="row align-items-center">
                                    <div class="row" style="width:100%;">
                                        <!-- Card -->
                                        <div class="col-lg-3 col-sm-6" style="margin-bottom:0;border-radius:0;" class="card">
                                            <div class="card-body" style="padding-left:5px;padding-right:5px;padding-top:5px;padding-bottom:5px;">
                                                <div class="row align-items-center">
                                                    <div class="col">
                                                        <!-- Title -->
                                                        <h6 class="card-title text-uppercase text-muted mb-2">
                                                            Country Filter
                                                        </h6>
                                                        <select class="form-control" data-toggle="select" title="Choose Country...">
                                                            <option>...</option>
                                                            <option>...</option>
                                                            <option>...</option>
                                                        </select>
                                                    </div>
                                                </div> <!-- / .row -->
                                            </div>
                                        </div>
                                        <!-- Card -->
                                        <div class="col-lg-3 col-sm-6" style="margin-bottom:0;border-radius:0;" class="card">
                                            <div class="card-body" style="padding-left:5px;padding-right:5px;padding-top:5px;padding-bottom:5px;">
                                                <div class="row align-items-center">
                                                    <div class="col">
                                                        <!-- Title -->
                                                        <h6 class="card-title text-uppercase text-muted mb-2">
                                                            Items Filter
                                                        </h6>
                                                        <select class="form-control" data-toggle="select" title="Choose Country...">
                                                            <option>...</option>
                                                            <option>...</option>
                                                            <option>...</option>
                                                        </select>
                                                    </div>
                                                </div> <!-- / .row -->
                                            </div>
                                        </div>
                                        <!-- Card -->
                                        <div class="col-lg-3 col-sm-6" style="margin-bottom:0;border-radius:0;" class="card">
                                            <div class="card-body" style="padding-left:5px;padding-right:5px;padding-top:5px;padding-bottom:5px;">
                                                <div class="row align-items-center">
                                                    <div class="col">
                                                        <!-- Title -->
                                                        <h6 class="card-title text-uppercase text-muted mb-2">
                                                            Items Filter
                                                        </h6>
                                                        <select class="form-control" data-toggle="select" title="Choose Country...">
                                                            <option>...</option>
                                                            <option>...</option>
                                                            <option>...</option>
                                                        </select>
                                                    </div>
                                                </div> <!-- / .row -->
                                            </div>
                                        </div>
                                        <!-- Card -->
                                        <div class="col-lg-3 col-sm-6" style="margin-bottom:0;border-radius:0;" class="card">
                                            <div class="card-body" style="padding-left:5px;padding-right:5px;padding-top:5px;padding-bottom:5px;">
                                                <div class="row align-items-center">
                                                    <div class="col">
                                                        <!-- Title -->
                                                        <h6 class="card-title text-uppercase text-muted mb-2">
                                                            Items Filter
                                                        </h6>
                                                        <select class="form-control" data-toggle="select" title="Choose Country...">
                                                            <option>...</option>
                                                            <option>...</option>
                                                            <option>...</option>
                                                        </select>
                                                    </div>
                                                </div> <!-- / .row -->
                                            </div>
                                        </div>
                                    </div>
                                </div> <!-- / .row -->
                            </div>
                            <div class="card-header">
                                <div class="row align-items-center">
                                    <p class="mb-0 lead text-center text-muted" style="width:100%;">
                                        Filtered Information...
                                    </p>
                                </div>
                            </div>
                            <div class="table-responsive mb-0" data-toggle="lists" data-lists-values='["goal-project", "goal-status", "goal-progress", "goal-date"]'>
                                <table class="table table-sm table-nowrap card-table">
                                    <thead>
                                    <tr>
                                        <th>
                                            <a href="#" class="text-muted sort" data-sort="goal-project">
                                                Goal
                                            </a>
                                        </th>
                                        <th>
                                            <a href="#" class="text-muted sort" data-sort="goal-status">
                                                Status
                                            </a>
                                        </th>
                                        <th>
                                            <a href="#" class="text-muted sort" data-sort="goal-progress">
                                                Progress
                                            </a>
                                        </th>
                                        <th>
                                            <a href="#" class="text-muted sort" data-sort="goal-date">
                                                Due date
                                            </a>
                                        </th>
                                        <th class="text-right">
                                            Team
                                        </th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody class="list">
                                    <tr>
                                        <td class="goal-project">
                                            Update the API
                                        </td>
                                        <td class="goal-status">
                                            <span class="text-warning">●</span> In progress
                                        </td>
                                        <td class="goal-progress">
                                            55%
                                        </td>
                                        <td class="goal-date">
                                            <time datetime="2018-10-24">07/24/18</time>
                                        </td>
                                        <td class="text-right">
                                            <div class="avatar-group">
                                                <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="Dianna Smiley">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-1.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                                <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="Ab Hadley">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-2.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                                <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="Adolfo Hess">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-3.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                                <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="Daniela Dewitt">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-4.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                            </div>
                                        </td>
                                        <td class="text-right">
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
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="goal-project">
                                            Release v1.2-Beta
                                        </td>
                                        <td class="goal-status">
                                            <span class="text-warning">●</span> In progress
                                        </td>
                                        <td class="goal-progress">
                                            25%
                                        </td>
                                        <td class="goal-date">
                                            <time datetime="2018-10-24">08/26/18</time>
                                        </td>
                                        <td class="text-right">
                                            <div class="avatar-group justify-content-end">
                                                <a href="#!" class="avatar avatar-xs" data-toggle="tooltip" title="Dianna Smiley">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-1.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                                <a href="#!" class="avatar avatar-xs" data-toggle="tooltip" title="Ab Hadley">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-2.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                                <a href="#!" class="avatar avatar-xs" data-toggle="tooltip" title="Adolfo Hess">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-3.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                            </div>
                                        </td>
                                        <td class="text-right">
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
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="goal-project">
                                            GDPR Compliance
                                        </td>
                                        <td class="goal-status">
                                            <span class="text-success">●</span> Completed
                                        </td>
                                        <td class="goal-progress">
                                            100%
                                        </td>
                                        <td class="goal-date">
                                            <time datetime="2018-10-24">06/19/18</time>
                                        </td>
                                        <td class="text-right">
                                            <div class="avatar-group justify-content-end">
                                                <a href="#!" class="avatar avatar-xs" data-toggle="tooltip" title="Dianna Smiley">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-1.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                                <a href="#!" class="avatar avatar-xs" data-toggle="tooltip" title="Ab Hadley">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-2.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                                <a href="#!" class="avatar avatar-xs" data-toggle="tooltip" title="Adolfo Hess">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-3.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                            </div>
                                        </td>
                                        <td class="text-right">
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
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="goal-project">
                                            v1.2 Documentation
                                        </td>
                                        <td class="goal-status">
                                            <span class="text-danger">●</span> Cancelled
                                        </td>
                                        <td class="goal-progress">
                                            0%
                                        </td>
                                        <td class="goal-date">
                                            <time datetime="2018-10-24">06/25/18</time>
                                        </td>
                                        <td class="text-right">
                                            <div class="avatar-group justify-content-end">
                                                <a href="#!" class="avatar avatar-xs" data-toggle="tooltip" title="Dianna Smiley">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-1.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                                <a href="#!" class="avatar avatar-xs" data-toggle="tooltip" title="Ab Hadley">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-2.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                            </div>
                                        </td>
                                        <td class="text-right">
                                            <div class="dropdown">
                                                <a href="#!" class="dropdown-ellipses dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <span class="fe fe-more-vertical"></span>
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
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="goal-project">
                                            design offsite
                                        </td>
                                        <td class="goal-status">
                                            <span class="text-success">●</span> Completed
                                        </td>
                                        <td class="goal-progress">
                                            100%
                                        </td>
                                        <td class="goal-date">
                                            <time datetime="2018-10-24">06/30/18</time>
                                        </td>
                                        <td class="text-right">
                                            <div class="avatar-group justify-content-end">
                                                <a href="#!" class="avatar avatar-xs" data-toggle="tooltip" title="Dianna Smiley">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-1.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                                <a href="#!" class="avatar avatar-xs" data-toggle="tooltip" title="Ab Hadley">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-2.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                                <a href="#!" class="avatar avatar-xs" data-toggle="tooltip" title="Adolfo Hess">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-3.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                                <a href="#!" class="avatar avatar-xs" data-toggle="tooltip" title="Daniela Dewitt">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-4.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                            </div>
                                        </td>
                                        <td class="text-right">
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
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="goal-project">
                                            Update the API
                                        </td>
                                        <td class="goal-status">
                                            <span class="text-warning">●</span> In progress
                                        </td>
                                        <td class="goal-progress">
                                            55%
                                        </td>
                                        <td class="goal-date">
                                            <time datetime="2018-10-24">07/24/18</time>
                                        </td>
                                        <td class="text-right">
                                            <div class="avatar-group">
                                                <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="Dianna Smiley">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-1.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                                <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="Ab Hadley">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-2.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                                <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="Adolfo Hess">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-3.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                                <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="Daniela Dewitt">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-4.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                            </div>
                                        </td>
                                        <td class="text-right">
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
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="goal-project">
                                            Update the API
                                        </td>
                                        <td class="goal-status">
                                            <span class="text-warning">●</span> In progress
                                        </td>
                                        <td class="goal-progress">
                                            55%
                                        </td>
                                        <td class="goal-date">
                                            <time datetime="2018-10-24">07/24/18</time>
                                        </td>
                                        <td class="text-right">
                                            <div class="avatar-group">
                                                <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="Dianna Smiley">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-1.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                                <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="Ab Hadley">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-2.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                                <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="Adolfo Hess">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-3.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                                <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="Daniela Dewitt">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-4.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                            </div>
                                        </td>
                                        <td class="text-right">
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
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="goal-project">
                                            Update the API
                                        </td>
                                        <td class="goal-status">
                                            <span class="text-warning">●</span> In progress
                                        </td>
                                        <td class="goal-progress">
                                            55%
                                        </td>
                                        <td class="goal-date">
                                            <time datetime="2018-10-24">07/24/18</time>
                                        </td>
                                        <td class="text-right">
                                            <div class="avatar-group">
                                                <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="Dianna Smiley">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-1.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                                <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="Ab Hadley">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-2.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                                <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="Adolfo Hess">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-3.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                                <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="Daniela Dewitt">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-4.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                            </div>
                                        </td>
                                        <td class="text-right">
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
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="goal-project">
                                            Update the API
                                        </td>
                                        <td class="goal-status">
                                            <span class="text-warning">●</span> In progress
                                        </td>
                                        <td class="goal-progress">
                                            55%
                                        </td>
                                        <td class="goal-date">
                                            <time datetime="2018-10-24">07/24/18</time>
                                        </td>
                                        <td class="text-right">
                                            <div class="avatar-group">
                                                <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="Dianna Smiley">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-1.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                                <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="Ab Hadley">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-2.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                                <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="Adolfo Hess">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-3.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                                <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="Daniela Dewitt">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-4.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                            </div>
                                        </td>
                                        <td class="text-right">
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
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="goal-project">
                                            Update the API
                                        </td>
                                        <td class="goal-status">
                                            <span class="text-warning">●</span> In progress
                                        </td>
                                        <td class="goal-progress">
                                            55%
                                        </td>
                                        <td class="goal-date">
                                            <time datetime="2018-10-24">07/24/18</time>
                                        </td>
                                        <td class="text-right">
                                            <div class="avatar-group">
                                                <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="Dianna Smiley">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-1.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                                <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="Ab Hadley">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-2.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                                <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="Adolfo Hess">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-3.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                                <a href="profile-posts.html" class="avatar avatar-xs" data-toggle="tooltip" title="Daniela Dewitt">
                                                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-4.jpg" class="avatar-img rounded-circle border border-white" alt="...">
                                                </a>
                                            </div>
                                        </td>
                                        <td class="text-right">
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
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="card-footer" style="border-top:0;min-height: 20vh;margin-top:-20px;margin-bottom:20px;padding-top:0;padding-bottom:0;text-align:center;">
                <span class="fe fe-chevron-down" style="color:#fffff0;font-size:80px;"></span>
                <!-- Chart -->
            </div>
        </div> <!-- / .container -->

    </div> <!-- / .header -->
    <div class="pt-7 pb-8 bg-dark bg-ellipses" style="margin-top:-50px;">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-md-10 col-lg-8 col-xl-6">

                    <!-- Title -->
                    <h1 class="display-3 text-center text-white">
                        Plans &amp; Pricing
                    </h1>

                    <!-- Text -->
                    <p class="lead text-center text-muted">
                        We have plans and prices that fit your business perfectly. Make your client site a success with our products.
                    </p>

                </div>
            </div> <!-- / .row -->
        </div> <!-- / .container-fluid -->
    </div>

    <!-- CARDS -->
    <div id="post-info" class="container">
        <div class="row" style="margin: auto;">
            <div class="posts nav-link-data col-12">
                <div class="card">
                    <div class="card-body">

                        <!-- Header -->
                        <div class="mb-3">
                            <div class="row align-items-center">
                                <div class="col-auto">

                                    <!-- Avatar -->
                                    <a href="#!" class="avatar">
                                        <img src="/organic-favour/assets/img/avatars/profiles/avatar-1.jpg" alt="..." class="avatar-img rounded-circle">
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

                        <!-- Price List Card -->
                        <div class="row">
                            <div class="col-12 col-lg-4">

                                <!-- Card -->
                                <div class="card">
                                    <div class="card-body">

                                        <!-- Title -->
                                        <h6 class="text-uppercase text-center text-muted my-4">
                                            Basic plan
                                        </h6>

                                        <!-- Price -->
                                        <div class="row no-gutters align-items-center justify-content-center">
                                            <div class="col-auto">
                                                <div class="h2 mb-0">$</div>
                                            </div>
                                            <div class="col-auto">
                                                <div class="display-2 mb-0">19</div>
                                            </div>
                                        </div> <!-- / .row -->

                                        <!-- Period -->
                                        <div class="h6 text-uppercase text-center text-muted mb-5">
                                            / month
                                        </div>
                                        <!-- Button -->
                                        <a href="#!" class="btn btn-block btn-light" id="price-choose-contact">
                                            Start with Basic
                                        </a>

                                    </div>
                                </div>

                            </div>
                            <div class="col-12 col-lg-4">

                                <!-- Card -->
                                <div class="card">
                                    <div class="card-body">

                                        <!-- Title -->
                                        <h6 class="text-uppercase text-center text-muted my-4">
                                            Standard plan
                                        </h6>

                                        <!-- Price -->
                                        <div class="row no-gutters align-items-center justify-content-center">
                                            <div class="col-auto">
                                                <div class="h2 mb-0">$</div>
                                            </div>
                                            <div class="col-auto">
                                                <div class="display-2 mb-0">29</div>
                                            </div>
                                        </div> <!-- / .row -->

                                        <!-- Period -->
                                        <div class="h6 text-uppercase text-center text-muted mb-5">
                                            / month
                                        </div>
                                        <!-- Button -->
                                        <a href="#!" class="btn btn-block btn-primary" id="price-choose-contact">
                                            Start with Standard
                                        </a>

                                    </div>
                                </div>

                            </div>
                            <div class="col-12 col-lg-4">

                                <!-- Card -->
                                <div class="card">
                                    <div class="card-body">

                                        <!-- Title -->
                                        <h6 class="text-uppercase text-center text-muted my-4">
                                            Enterprise plan
                                        </h6>

                                        <!-- Price -->
                                        <div class="row no-gutters align-items-center justify-content-center">
                                            <div class="col-auto">
                                                <div class="h2 mb-0">$</div>
                                            </div>
                                            <div class="col-auto">
                                                <div class="display-2 mb-0">99</div>
                                            </div>
                                        </div> <!-- / .row -->

                                        <!-- Period -->
                                        <div class="h6 text-uppercase text-center text-muted mb-5">
                                            / month
                                        </div>
                                        <!-- Button -->
                                        <a href="#!" class="btn btn-block btn-light" id="price-choose-contact">
                                            Start with Enterprise
                                        </a>

                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- Divider -->
                        <hr>

                        <!-- Comments -->

                        <div class="comment mb-3">
                            <div class="row">
                                <div class="col-auto">

                                    <!-- Avatar -->
                                    <a class="avatar" href="profile-posts.html">
                                        <img src="/organic-favour/assets/img/avatars/profiles/avatar-2.jpg" alt="..." class="avatar-img rounded-circle">
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
                                        <img src="/organic-favour/assets/img/avatars/profiles/avatar-3.jpg" alt="..." class="avatar-img rounded-circle">
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
                                    <img src="/organic-favour/assets/img/avatars/profiles/avatar-1.jpg" alt="..." class="avatar-img rounded-circle">
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
        </div> <!-- / .row -->
    </div> <!-- / .container -->

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

<%--<script src="${pageContext.request.contextPath}/assets/js/mapbox-custom.js"></script>--%>
<script>
    mapboxgl.accessToken = 'pk.eyJ1IjoiN2hlNHIxc2UiLCJhIjoiY2prcXpzdTV6MXpwMjN1czc2eG5uZjd6bSJ9.P4KTUArF5MU9eY-WrOCJdg';
    var places = {
        "type": "FeatureCollection",
        "features": [{
            <%  %>
            "type": "Feature",
            "properties": {
                "description": "<strong>Mad Men Season Five Finale Watch Party</strong><button class=\"whatthehell\">Detail</button>",
                "icon": "theatre"
            },
            "geometry": {
                "type": "Point",
                "coordinates": [-77.038659, 38.931567]
            }
        }, {
            "type": "Feature",
            "properties": {
                "description": "<strong>Mad Men Season Five Finale Watch Party</strong>",
                "icon": "theatre"
            },
            "geometry": {
                "type": "Point",
                "coordinates": [-77.003168, 38.894651]
            }
        }, {
            "type": "Feature",
            "properties": {
                "description": "<strong>Mad Men Season Five Finale Watch Party</strong>",
                "icon": "bar"
            },
            "geometry": {
                "type": "Point",
                "coordinates": [-77.090372, 38.881189]
            }
        }, {
            "type": "Feature",
            "properties": {
                "description": "<strong>Mad Men Season Five Finale Watch Party</strong>",
                "icon": "bicycle"
            },
            "geometry": {
                "type": "Point",
                "coordinates": [-77.052477, 38.943951]
            }
        }, {
            "type": "Feature",
            "properties": {
                "description": "<strong>Mad Men Season Five Finale Watch Party</strong>",
                "icon": "music"
            },
            "geometry": {
                "type": "Point",
                "coordinates": [-77.031706, 38.914581]
            }
        }, {
            "type": "Feature",
            "properties": {
                "description": "<strong>Mad Men Season Five Finale Watch Party</strong>",
                "icon": "music"
            },
            "geometry": {
                "type": "Point",
                "coordinates": [-77.020945, 38.878241]
            }
        }, {
            "type": "Feature",
            "properties": {
                "description": "<strong>Mad Men Season Five Finale Watch Party</strong>",
                "icon": "music"
            },
            "geometry": {
                "type": "Point",
                "coordinates": [-77.007481, 38.876516]
            }
        }]
    };

    var layerIDs = []; // Will contain a list used to filter against.
    var filterInput = document.getElementById('filter-input');
    var map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/basic-v9',
        center: [-77.04, 38.907],
        zoom: 11.15
    });

    map.on('load', function() {
        // Add a GeoJSON source containing place coordinates and information.
        map.addSource('places', {
            "type": "geojson",
            "data": places
        });

        places.features.forEach(function(feature) {
            var symbol = feature.properties['icon'];
            var layerID = 'poi-' + symbol;

            // Add a layer for this symbol type if it hasn't been added already.
            if (!map.getLayer(layerID)) {
                map.addLayer({
                    "id": layerID,
                    "type": "symbol",
                    "source": "places",
                    "layout": {
                        "icon-image": symbol + "-15",
                        "icon-allow-overlap": true,
                        "text-field": symbol,
                        "text-font": ["Open Sans Bold", "Arial Unicode MS Bold"],
                        "text-size": 11,
                        "text-transform": "uppercase",
                        "text-letter-spacing": 0.05,
                        "text-offset": [0, 1.5]
                    },
                    "paint": {
                        "text-color": "#202",
                        "text-halo-color": "#fff",
                        "text-halo-width": 2
                    },
                    "filter": ["==", "icon", symbol]
                });

                layerIDs.push(layerID);
                map.on('click', layerID, function (e) {
                    var coordinates = e.features[0].geometry.coordinates.slice();
                    var description = e.features[0].properties.description;

                    // Ensure that if the map is zoomed out such that multiple
                    // copies of the feature are visible, the popup appears
                    // over the copy being pointed to.
                    while (Math.abs(e.lngLat.lng - coordinates[0]) > 180) {
                        coordinates[0] += e.lngLat.lng > coordinates[0] ? 360 : -360;
                    }

                    new mapboxgl.Popup()
                        .setLngLat(coordinates)
                        .setHTML(description)
                        .addTo(map);
                });
                // Center the map on the coordinates of any clicked symbol from the 'symbols' layer.
                map.on('click', layerID, function (e) {
                    map.flyTo({center: e.features[0].geometry.coordinates});
                });

                // Change the cursor to a pointer when the it enters a feature in the 'symbols' layer.
                map.on('mouseenter', layerID, function () {
                    map.getCanvas().style.cursor = 'pointer';
                });

                // Change it back to a pointer when it leaves.
                map.on('mouseleave', layerID, function () {
                    map.getCanvas().style.cursor = '';
                });
            }
        });

        filterInput.addEventListener('keyup', function(e) {
            // If the input value matches a layerID set
            // it's visibility to 'visible' or else hide it.
            var value = e.target.value.trim().toLowerCase();
            layerIDs.forEach(function(layerID) {
                map.setLayoutProperty(layerID, 'visibility',
                    layerID.indexOf(value) > -1 ? 'visible' : 'none');
            });
        });

        map.on('click', 'places', function (e) {
            var coordinates = e.features[0].geometry.coordinates.slice();
            var description = e.features[0].properties.description;

            // Ensure that if the map is zoomed out such that multiple
            // copies of the feature are visible, the popup appears
            // over the copy being pointed to.
            while (Math.abs(e.lngLat.lng - coordinates[0]) > 180) {
                coordinates[0] += e.lngLat.lng > coordinates[0] ? 360 : -360;
            }

            new mapboxgl.Popup()
                .setLngLat(coordinates)
                .setHTML(description)
                .addTo(map);
        });
    });










    $('.price-option-div').slideUp(500);
    $('.price-option-one').slideDown(500);
    $('.user-farm-card').on('click', function() {
        $('.first-post-form').addClass("left");
        $('.second-post-form').removeClass("right");
        var farmName = $(this).find('.farmName').html();
        $('#farmSelected').html(farmName);
    });
    $(".previous-post-form").on("click", function() {
        $(".first-post-form").removeClass("left");
        $(".second-post-form").addClass("right");
    });

    $('#pc-opt-btn1').on('click', function() {
        $('.pc-opt-btn').removeClass('active');
        $(this).addClass('active');
        $('.price-option-div').slideUp(200);
        setTimeout(function(){$('.price-option-one').slideDown(200)}, 200);
    });
    $('#pc-opt-btn2').on('click', function() {
        $('.pc-opt-btn').removeClass('active');
        $(this).addClass('active');
        $('.price-option-div').slideUp(200);
        setTimeout(function(){$('.price-option-two').slideDown(200)}, 200);
    });
    $('#pc-opt-btn3').on('click', function() {
        $('.pc-opt-btn').removeClass('active');
        $(this).addClass('active');
        $('.price-option-div').slideUp(200);
        setTimeout(function(){$('.price-option-three').slideDown(200)}, 200);
    });


    // var wth = document.querySelector('.whatthehell');
    // wth.on('click', function() {
    //
    // });
    $(document).on('click', '.whatthehell', function() {
        $('html, body').animate({
            scrollTop: $("#post-info").offset().top
        }, 2000);
    });
    $('#filter-info-div').slideUp(0);
    $('#filter-by').on('click', function() {
        $('#filter-info-div').slideToggle(500);
        // $('#post-filter-modal').modal('show');
    });

    $(document).on('click', '#price-choose-contact', function() {
        $('#messages-modal').modal('show');
    });
</script>
</body>
</html>