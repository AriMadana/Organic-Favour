<%@ page import="org.springframework.boot.web.servlet.server.Session" %>
<%@ page import="com.ethereals.organic_favour.dao.UsersDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
  String id = (String) session.getAttribute("id");
  UsersDAO usersDAO = new UsersDAO();
  String[] user_data = usersDAO.selectProfile(id);
  //System.out.println(user_data[2] + "abcabc");
  String email = user_data[2];
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="org.springframework.boot.web.servlet.server.Session" %>
<%@ page import="com.ethereals.organic_favour.dao.UsersDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
  String id = (String) session.getAttribute("id");
  UsersDAO usersDAO = new UsersDAO();
  String[] user_data = usersDAO.selectProfile(id);
  //System.out.println(user_data[2] + "abcabc");
  String email = user_data[2];
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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
</head>
<body>

<!-- MODALS
================================================== -->
<!-- Modal: Members -->
<div class="modal fade" id="modalMembers" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-card card" data-toggle="lists" data-lists-values='["name"]'>
        <div class="card-header">
          <div class="row align-items-center">
            <div class="col">

              <!-- Title -->
              <h4 class="card-header-title" id="exampleModalCenterTitle">
                Add a member
              </h4>

            </div>
            <div class="col-auto">

              <!-- Close -->
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>

            </div>
          </div> <!-- / .row -->
        </div>
        <div class="card-header">

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
        <div class="card-body">

          <!-- List group -->
          <ul class="list-group list-group-flush list my--3">
            <li class="list-group-item px-0">

              <div class="row align-items-center">
                <div class="col-auto">

                  <!-- Avatar -->
                  <a href="profile-posts.html" class="avatar">
                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-5.jpg" alt="..." class="avatar-img rounded-circle">
                  </a>

                </div>
                <div class="col ml--2">

                  <!-- Title -->
                  <h4 class="mb-1 name">
                    <a href="profile-posts.html">Miyah Myles</a>
                  </h4>

                  <!-- Time -->
                  <p class="small mb-0">
                    <span class="text-success">●</span> Online
                  </p>

                </div>
                <div class="col-auto">

                  <!-- Button -->
                  <a href="#!" class="btn btn-sm btn-white">
                    Add
                  </a>

                </div>
              </div> <!-- / .row -->

            </li>
            <li class="list-group-item px-0">

              <div class="row align-items-center">
                <div class="col-auto">

                  <!-- Avatar -->
                  <a href="profile-posts.html" class="avatar">
                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-6.jpg" alt="..." class="avatar-img rounded-circle">
                  </a>

                </div>
                <div class="col ml--2">

                  <!-- Title -->
                  <h4 class="mb-1 name">
                    <a href="profile-posts.html">Ryu Duke</a>
                  </h4>

                  <!-- Time -->
                  <p class="small mb-0">
                    <span class="text-success">●</span> Online
                  </p>

                </div>
                <div class="col-auto">

                  <!-- Button -->
                  <a href="#!" class="btn btn-sm btn-white">
                    Add
                  </a>

                </div>
              </div> <!-- / .row -->

            </li>
            <li class="list-group-item px-0">

              <div class="row align-items-center">
                <div class="col-auto">

                  <!-- Avatar -->
                  <a href="profile-posts.html" class="avatar">
                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-7.jpg" alt="..." class="avatar-img rounded-circle">
                  </a>

                </div>
                <div class="col ml--2">

                  <!-- Title -->
                  <h4 class="mb-1 name">
                    <a href="profile-posts.html">Glen Rouse</a>
                  </h4>

                  <!-- Time -->
                  <p class="small mb-0">
                    <span class="text-warning">●</span> Busy
                  </p>

                </div>
                <div class="col-auto">

                  <!-- Button -->
                  <a href="#!" class="btn btn-sm btn-white">
                    Add
                  </a>

                </div>
              </div> <!-- / .row -->

            </li>
            <li class="list-group-item px-0">

              <div class="row align-items-center">
                <div class="col-auto">

                  <!-- Avatar -->
                  <a href="profile-posts.html" class="avatar">
                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-8.jpg" alt="..." class="avatar-img rounded-circle">
                  </a>

                </div>
                <div class="col ml--2">

                  <!-- Title -->
                  <h4 class="mb-1 name">
                    <a href="profile-posts.html">Grace Gross</a>
                  </h4>

                  <!-- Time -->
                  <p class="small mb-0">
                    <span class="text-danger">●</span> Offline
                  </p>

                </div>
                <div class="col-auto">

                  <!-- Button -->
                  <a href="#!" class="btn btn-sm btn-white">
                    Add
                  </a>

                </div>
              </div> <!-- / .row -->

            </li>
          </ul>

        </div>
      </div>
    </div>
  </div>
</div>

<!-- Modal: Search -->
<div class="modal fade" id="sidebarModalSearch" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-dialog-vertical" role="document">
    <div class="modal-content">
      <div class="modal-body" data-toggle="lists" data-lists-values='["name"]'>

        <!-- Form -->
        <form class="mb-4">
          <div class="input-group input-group-merge">
            <input type="search" class="form-control form-control-prepended search" placeholder="Search">
            <div class="input-group-prepend">
              <div class="input-group-text">
                <span class="fe fe-search"></span>
              </div>
            </div>
          </div>
        </form>

        <!-- List group -->
        <div class="my--3">
          <div class="list-group list-group-flush list">
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

      </div>
    </div>
  </div>
</div>

<!-- Modal: Activity -->
<div class="modal fade" id="sidebarModalActivity" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-dialog-vertical" role="document">
    <div class="modal-content">
      <div class="modal-header">

        <!-- Title -->
        <h4 class="modal-title">
          Notifications
        </h4>

        <!-- Close -->
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">
                &times;
              </span>
        </button>

      </div>
      <div class="modal-body">

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
    </div>
  </div>
</div>

<!-- SIDEBAR
================================================== -->
<nav class="navbar navbar-vertical fixed-left navbar-expand-md navbar-light bg-white">
  <div class="container-fluid">

    <!-- Toggler -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#sidebarCollapse" aria-controls="sidebarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <!-- Brand -->
    <a class="navbar-brand" href="index.html">
      <img src="${pageContext.request.contextPath}/assets/img/logo.svg" class="navbar-brand-img
          mx-auto" alt="...">
    </a>

    <!-- User (xs) -->
    <div class="navbar-user d-md-none">

      <!-- Dropdown -->
      <div class="dropdown">

        <!-- Toggle -->
        <a href="#!" id="sidebarIcon" class="dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <div class="avatar avatar-sm avatar-online">
            <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-1.jpg" class="avatar-img rounded-circle" alt="...">
          </div>
        </a>

        <!-- Menu -->
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="sidebarIcon">
          <a href="profile-posts.html" class="dropdown-item">Profile</a>
          <a href="settings.html" class="dropdown-item">Settings</a>
          <hr class="dropdown-divider">
          <a href="sign-in.html" class="dropdown-item">Logout</a>
        </div>

      </div>

    </div>

    <!-- Collapse -->
    <div class="collapse navbar-collapse" id="sidebarCollapse">

      <!-- Form -->
      <form class="mt-4 mb-3 d-md-none">
        <div class="input-group input-group-rounded input-group-merge">
          <input type="search" class="form-control form-control-rounded form-control-prepended" placeholder="Search" aria-label="Search">
          <div class="input-group-prepend">
            <div class="input-group-text">
              <span class="fe fe-search"></span>
            </div>
          </div>
        </div>
      </form>

      <!-- Navigation -->
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link " href="index.html">
            <i class="fe fe-home"></i> Dashboard
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#sidebarPages" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="sidebarPages">
            <i class="fe fe-file"></i> Pages
          </a>
          <div class="collapse show" id="sidebarPages">
            <ul class="nav nav-sm flex-column">
              <li class="nav-item">
                <a href="#sidebarProfile" class="nav-link" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarProfile">
                  Profile
                </a>
                <div class="collapse " id="sidebarProfile">
                  <ul class="nav nav-sm flex-column">
                    <li class="nav-item">
                      <a href="profile-posts.html" class="nav-link ">
                        Posts
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="profile-groups.html" class="nav-link ">
                        Groups
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="profile-projects.html" class="nav-link ">
                        Projects
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="profile-files.html" class="nav-link ">
                        Files
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="profile-subscribers.html" class="nav-link ">
                        Subscribers
                      </a>
                    </li>
                  </ul>
                </div>
              </li>
              <li class="nav-item">
                <a href="#sidebarProject" class="nav-link" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarProject">
                  Project
                </a>
                <div class="collapse " id="sidebarProject">
                  <ul class="nav nav-sm flex-column">
                    <li class="nav-item">
                      <a href="project-overview.html" class="nav-link ">
                        Overview
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="project-files.html" class="nav-link ">
                        Files
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="project-reports.html" class="nav-link ">
                        Reports
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="project-new.html" class="nav-link ">
                        New project <span class="badge badge-soft-success ml-auto">New</span>
                      </a>
                    </li>
                  </ul>
                </div>
              </li>
              <li class="nav-item">
                <a href="#sidebarTeam" class="nav-link" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarTeam">
                  Team
                </a>
                <div class="collapse " id="sidebarTeam">
                  <ul class="nav nav-sm flex-column">
                    <li class="nav-item">
                      <a href="team-overview.html" class="nav-link ">
                        Overview
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="team-projects.html" class="nav-link ">
                        Projects
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="team-members.html" class="nav-link ">
                        Members
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="team-new.html" class="nav-link ">
                        New team <span class="badge badge-soft-success ml-auto">New</span>
                      </a>
                    </li>
                  </ul>
                </div>
              </li>
              <li class="nav-item">
                <a href="orders.html" class="nav-link ">
                  Orders <span class="badge badge-soft-success ml-auto">New</span>
                </a>
              </li>
              <li class="nav-item">
                <a href="feed.html" class="nav-link ">
                  Feed
                </a>
              </li>
              <li class="nav-item">
                <a href="settings.html" class="nav-link active">
                  Settings
                </a>
              </li>
              <li class="nav-item">
                <a href="invoice.html" class="nav-link ">
                  Invoice <span class="badge badge-soft-success ml-auto">New</span>
                </a>
              </li>
              <li class="nav-item">
                <a href="pricing.html" class="nav-link ">
                  Pricing <span class="badge badge-soft-success ml-auto">New</span>
                </a>
              </li>
            </ul>
          </div>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#sidebarAuth" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarAuth">
            <i class="fe fe-user"></i> Authentication
          </a>
          <div class="collapse" id="sidebarAuth">
            <ul class="nav nav-sm flex-column">
              <li class="nav-item">
                <a href="#sidebarSignIn" class="nav-link" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarSignIn">
                  Sign in
                </a>
                <div class="collapse" id="sidebarSignIn">
                  <ul class="nav nav-sm flex-column">
                    <li class="nav-item">
                      <a href="sign-in-cover.html" class="nav-link">
                        Cover
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="sign-in-illustration.html" class="nav-link">
                        Illustration
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="sign-in.html" class="nav-link">
                        Basic
                      </a>
                    </li>
                  </ul>
                </div>
              </li>
              <li class="nav-item">
                <a href="#sidebarSignUp" class="nav-link" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarSignUp">
                  Sign up
                </a>
                <div class="collapse" id="sidebarSignUp">
                  <ul class="nav nav-sm flex-column">
                    <li class="nav-item">
                      <a href="sign-up-cover.html" class="nav-link">
                        Cover
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="sign-up-illustration.html" class="nav-link">
                        Illustration
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="sign-up.html" class="nav-link">
                        Basic
                      </a>
                    </li>
                  </ul>
                </div>
              </li>
              <li class="nav-item">
                <a href="#sidebarPassword" class="nav-link" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarPassword">
                  Password reset
                </a>
                <div class="collapse" id="sidebarPassword">
                  <ul class="nav nav-sm flex-column">
                    <li class="nav-item">
                      <a href="password-reset-cover.html" class="nav-link">
                        Cover
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="password-reset-illustration.html" class="nav-link">
                        Illustration
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="password-reset.html" class="nav-link">
                        Basic
                      </a>
                    </li>
                  </ul>
                </div>
              </li>
              <li class="nav-item">
                <a href="#sidebarError" class="nav-link" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarError">
                  Error
                </a>
                <div class="collapse" id="sidebarError">
                  <ul class="nav nav-sm flex-column">
                    <li class="nav-item">
                      <a href="error-illustration.html" class="nav-link">
                        Illustration
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="error.html" class="nav-link">
                        Basic
                      </a>
                    </li>
                  </ul>
                </div>
              </li>
            </ul>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link" href="#sidebarLayouts" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarLayouts">
            <i class="fe fe-layout"></i> Layouts
          </a>
          <div class="collapse " id="sidebarLayouts">
            <ul class="nav nav-sm flex-column">
              <li class="nav-item">
                <a href="index.html" class="nav-link">
                  Sidenav
                </a>
              </li>
              <li class="nav-item">
                <a href="dashboard-side-topnav.html" class="nav-link ">
                  Sidenav + top nav
                </a>
              </li>
              <li class="nav-item">
                <a href="dashboard-topnav.html" class="nav-link">
                  Topnav
                </a>
              </li>
              <li class="nav-item">
                <a href="#sidebarDashboard" class="nav-link" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarDashboard">
                  Without hero chart
                </a>
                <div class="collapse " id="sidebarDashboard">
                  <ul class="nav nav-sm flex-column">
                    <li class="nav-item">
                      <a href="dashboard-no-hero.html" class="nav-link ">
                        Sidenav
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="dashboard-side-topnav-no-hero.html" class="nav-link ">
                        Sidenav + top nav
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="dashboard-topnav-no-hero.html" class="nav-link">
                        Topnav
                      </a>
                    </li>
                  </ul>
                </div>
              </li>
            </ul>
          </div>
        </li>
        <li class="nav-item d-md-none">
          <a class="nav-link" href="#sidebarModalActivity" data-toggle="modal">
            <span class="fe fe-bell"></span> Notifications
          </a>
        </li>
      </ul>

      <!-- Divider -->
      <hr class="my-3">

      <!-- Heading -->
      <h6 class="navbar-heading text-muted">
        Documentation
      </h6>

      <!-- Navigation -->
      <ul class="navbar-nav mb-md-3">
        <li class="nav-item">
          <a class="nav-link " href="getting-started.html">
            <i class="fe fe-clipboard"></i> Getting started
          </a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link" href="#sidebarComponents" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarComponents">
            <i class="fe fe-book-open"></i> Components
          </a>
          <div class="collapse " id="sidebarComponents">
            <ul class="nav nav-sm flex-column">
              <li class="nav-item">
                <a href="components.html#alerts" class="nav-link">
                  Alerts
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#avatars" class="nav-link">
                  Avatars
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#badges" class="nav-link">
                  Badges
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#breadcrumb" class="nav-link">
                  Breadcrumb
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#buttons" class="nav-link">
                  Buttons
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#button-group" class="nav-link">
                  Button group
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#cards" class="nav-link">
                  Cards
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#charts" class="nav-link">
                  Charts
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#dropdowns" class="nav-link">
                  Dropdowns
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#forms" class="nav-link">
                  Forms
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#icons" class="nav-link">
                  Icons
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#lists" class="nav-link">
                  Lists
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#loaders" class="nav-link">
                  Loaders
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#modal" class="nav-link">
                  Modal
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#navs" class="nav-link">
                  Navs
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#navbar" class="nav-link">
                  Navbar
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#page-headers" class="nav-link">
                  Page headers
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#pagination" class="nav-link">
                  Pagination
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#popovers" class="nav-link">
                  Popovers
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#progress" class="nav-link">
                  Progress
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#social-posts" class="nav-link">
                  Social post
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#tables" class="nav-link">
                  Tables
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#tooltips" class="nav-link">
                  Tooltips
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#typography" class="nav-link">
                  Typography
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#utilities" class="nav-link">
                  Utilities
                </a>
              </li>
            </ul>
          </div>
        </li>
        <li class="nav-item">
          <a class="nav-link " href="changelog.html">
            <i class="fe fe-git-branch"></i> Changelog <span class="badge badge-primary ml-auto">v1.1.1</span>
          </a>
        </li>
      </ul>



      <!-- User (md) -->
      <div class="navbar-user mt-auto d-none d-md-flex">

        <!-- Icon -->
        <a href="#sidebarModalActivity" class="text-muted" data-toggle="modal">
              <span class="icon">
                <i class="fe fe-bell"></i>
              </span>
        </a>

        <!-- Dropup -->
        <div class="dropup">

          <!-- Toggle -->
          <a href="#!" id="sidebarIconCopy" class="dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <div class="avatar avatar-sm avatar-online">
              <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-1.jpg" class="avatar-img rounded-circle" alt="...">
            </div>
          </a>

          <!-- Menu -->
          <div class="dropdown-menu" aria-labelledby="sidebarIconCopy">
            <a href="profile-posts.html" class="dropdown-item">Profile</a>
            <a href="settings.html" class="dropdown-item">Settings</a>
            <hr class="dropdown-divider">
            <a href="sign-in.html" class="dropdown-item">Logout</a>
          </div>

        </div>

        <!-- Icon -->
        <a href="#sidebarModalSearch" class="text-muted" data-toggle="modal">
              <span class="icon">
                <i class="fe fe-search"></i>
              </span>
        </a>

      </div>


    </div> <!-- / .navbar-collapse -->

  </div> <!-- / .container-fluid -->
</nav>

<!-- MAIN CONTENT
================================================== -->
<div class="main-content">
  <div class="container-fluid">
    <div class="row justify-content-center">
      <div class="col-12 col-lg-10 col-xl-8">

        <!-- Header -->
        <div class="header mt-md-5">
          <div class="header-body">
            <div class="row align-items-center">
              <div class="col">

                <!-- Pretitle -->
                <h6 class="header-pretitle">
                  Overview
                </h6>

                <!-- Title -->
                <h1 class="header-title">
                  Settings
                </h1>

              </div>
            </div> <!-- / .row -->
            <div class="row align-items-center">
              <div class="col">

                <!-- Nav -->
                <ul class="nav nav-tabs nav-overflow header-tabs">
                  <li class="nav-item">
                    <a href="#!" class="nav-link active">
                      General
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="#!" class="nav-link">
                      Profile
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="#!" class="nav-link">
                      Billing
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="#!" class="nav-link">
                      Notifications
                    </a>
                  </li>
                </ul>

              </div>
            </div>
          </div>
        </div>

        <!-- Form -->
        <form class="mb-4">

          <div class="row">
            <div class="col-12 col-md-6">

              <!-- First name -->
              <div class="form-group">

                <!-- Label -->
                <label>
                  First name
                </label>

                <!-- Input -->
                <input type="text" name="first-name" class="form-control" placeholder="Jone">

              </div>

            </div>
            <div class="col-12 col-md-6">

              <!-- Last name -->
              <div class="form-group">

                <!-- Label -->
                <label>
                  Last name
                </label>

                <!-- Input -->
                <input type="text" name="last-name" class="form-control" placeholder="Doe">

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
                <input type="email" name="user_email" class="form-control" value="<%= user_data[2] %>">

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
                <input type="text" class="form-control mb-3" name="user_ph_no" placeholder="(___)___-____" data-mask="(000) 000-0000">

              </div>

            </div>

            <div class="col-12 col-md-6">
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
                    <input type="checkbox" class="custom-control-input" id="toggleTwo" checked>
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
          <button type="submit" name="update_profile" class="btn btn-primary">
            Update password
          </button>

        </div>
      </div> <!-- / .row -->

      </form>

    </div>
  </div> <!-- / .row -->
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

</body>
</html>
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
</head>
<body>

<!-- MODALS
================================================== -->
<!-- Modal: Members -->
<div class="modal fade" id="modalMembers" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-card card" data-toggle="lists" data-lists-values='["name"]'>
        <div class="card-header">
          <div class="row align-items-center">
            <div class="col">

              <!-- Title -->
              <h4 class="card-header-title" id="exampleModalCenterTitle">
                Add a member
              </h4>

            </div>
            <div class="col-auto">

              <!-- Close -->
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>

            </div>
          </div> <!-- / .row -->
        </div>
        <div class="card-header">

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
        <div class="card-body">

          <!-- List group -->
          <ul class="list-group list-group-flush list my--3">
            <li class="list-group-item px-0">

              <div class="row align-items-center">
                <div class="col-auto">

                  <!-- Avatar -->
                  <a href="profile-posts.html" class="avatar">
                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-5.jpg" alt="..." class="avatar-img rounded-circle">
                  </a>

                </div>
                <div class="col ml--2">

                  <!-- Title -->
                  <h4 class="mb-1 name">
                    <a href="profile-posts.html">Miyah Myles</a>
                  </h4>

                  <!-- Time -->
                  <p class="small mb-0">
                    <span class="text-success">●</span> Online
                  </p>

                </div>
                <div class="col-auto">

                  <!-- Button -->
                  <a href="#!" class="btn btn-sm btn-white">
                    Add
                  </a>

                </div>
              </div> <!-- / .row -->

            </li>
            <li class="list-group-item px-0">

              <div class="row align-items-center">
                <div class="col-auto">

                  <!-- Avatar -->
                  <a href="profile-posts.html" class="avatar">
                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-6.jpg" alt="..." class="avatar-img rounded-circle">
                  </a>

                </div>
                <div class="col ml--2">

                  <!-- Title -->
                  <h4 class="mb-1 name">
                    <a href="profile-posts.html">Ryu Duke</a>
                  </h4>

                  <!-- Time -->
                  <p class="small mb-0">
                    <span class="text-success">●</span> Online
                  </p>

                </div>
                <div class="col-auto">

                  <!-- Button -->
                  <a href="#!" class="btn btn-sm btn-white">
                    Add
                  </a>

                </div>
              </div> <!-- / .row -->

            </li>
            <li class="list-group-item px-0">

              <div class="row align-items-center">
                <div class="col-auto">

                  <!-- Avatar -->
                  <a href="profile-posts.html" class="avatar">
                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-7.jpg" alt="..." class="avatar-img rounded-circle">
                  </a>

                </div>
                <div class="col ml--2">

                  <!-- Title -->
                  <h4 class="mb-1 name">
                    <a href="profile-posts.html">Glen Rouse</a>
                  </h4>

                  <!-- Time -->
                  <p class="small mb-0">
                    <span class="text-warning">●</span> Busy
                  </p>

                </div>
                <div class="col-auto">

                  <!-- Button -->
                  <a href="#!" class="btn btn-sm btn-white">
                    Add
                  </a>

                </div>
              </div> <!-- / .row -->

            </li>
            <li class="list-group-item px-0">

              <div class="row align-items-center">
                <div class="col-auto">

                  <!-- Avatar -->
                  <a href="profile-posts.html" class="avatar">
                    <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-8.jpg" alt="..." class="avatar-img rounded-circle">
                  </a>

                </div>
                <div class="col ml--2">

                  <!-- Title -->
                  <h4 class="mb-1 name">
                    <a href="profile-posts.html">Grace Gross</a>
                  </h4>

                  <!-- Time -->
                  <p class="small mb-0">
                    <span class="text-danger">●</span> Offline
                  </p>

                </div>
                <div class="col-auto">

                  <!-- Button -->
                  <a href="#!" class="btn btn-sm btn-white">
                    Add
                  </a>

                </div>
              </div> <!-- / .row -->

            </li>
          </ul>

        </div>
      </div>
    </div>
  </div>
</div>

<!-- Modal: Search -->
<div class="modal fade" id="sidebarModalSearch" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-dialog-vertical" role="document">
    <div class="modal-content">
      <div class="modal-body" data-toggle="lists" data-lists-values='["name"]'>

        <!-- Form -->
        <form class="mb-4">
          <div class="input-group input-group-merge">
            <input type="search" class="form-control form-control-prepended search" placeholder="Search">
            <div class="input-group-prepend">
              <div class="input-group-text">
                <span class="fe fe-search"></span>
              </div>
            </div>
          </div>
        </form>

        <!-- List group -->
        <div class="my--3">
          <div class="list-group list-group-flush list">
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

      </div>
    </div>
  </div>
</div>

<!-- Modal: Activity -->
<div class="modal fade" id="sidebarModalActivity" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-dialog-vertical" role="document">
    <div class="modal-content">
      <div class="modal-header">

        <!-- Title -->
        <h4 class="modal-title">
          Notifications
        </h4>

        <!-- Close -->
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">
                &times;
              </span>
        </button>

      </div>
      <div class="modal-body">

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
    </div>
  </div>
</div>

<!-- SIDEBAR
================================================== -->
<nav class="navbar navbar-vertical fixed-left navbar-expand-md navbar-light bg-white">
  <div class="container-fluid">

    <!-- Toggler -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#sidebarCollapse" aria-controls="sidebarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <!-- Brand -->
    <a class="navbar-brand" href="index.html">
      <img src="${pageContext.request.contextPath}/assets/img/logo.svg" class="navbar-brand-img
          mx-auto" alt="...">
    </a>

    <!-- User (xs) -->
    <div class="navbar-user d-md-none">

      <!-- Dropdown -->
      <div class="dropdown">

        <!-- Toggle -->
        <a href="#!" id="sidebarIcon" class="dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <div class="avatar avatar-sm avatar-online">
            <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-1.jpg" class="avatar-img rounded-circle" alt="...">
          </div>
        </a>

        <!-- Menu -->
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="sidebarIcon">
          <a href="profile-posts.html" class="dropdown-item">Profile</a>
          <a href="settings.html" class="dropdown-item">Settings</a>
          <hr class="dropdown-divider">
          <a href="sign-in.html" class="dropdown-item">Logout</a>
        </div>

      </div>

    </div>

    <!-- Collapse -->
    <div class="collapse navbar-collapse" id="sidebarCollapse">

      <!-- Form -->
      <form class="mt-4 mb-3 d-md-none">
        <div class="input-group input-group-rounded input-group-merge">
          <input type="search" class="form-control form-control-rounded form-control-prepended" placeholder="Search" aria-label="Search">
          <div class="input-group-prepend">
            <div class="input-group-text">
              <span class="fe fe-search"></span>
            </div>
          </div>
        </div>
      </form>

      <!-- Navigation -->
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link " href="index.html">
            <i class="fe fe-home"></i> Dashboard
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#sidebarPages" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="sidebarPages">
            <i class="fe fe-file"></i> Pages
          </a>
          <div class="collapse show" id="sidebarPages">
            <ul class="nav nav-sm flex-column">
              <li class="nav-item">
                <a href="#sidebarProfile" class="nav-link" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarProfile">
                  Profile
                </a>
                <div class="collapse " id="sidebarProfile">
                  <ul class="nav nav-sm flex-column">
                    <li class="nav-item">
                      <a href="profile-posts.html" class="nav-link ">
                        Posts
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="profile-groups.html" class="nav-link ">
                        Groups
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="profile-projects.html" class="nav-link ">
                        Projects
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="profile-files.html" class="nav-link ">
                        Files
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="profile-subscribers.html" class="nav-link ">
                        Subscribers
                      </a>
                    </li>
                  </ul>
                </div>
              </li>
              <li class="nav-item">
                <a href="#sidebarProject" class="nav-link" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarProject">
                  Project
                </a>
                <div class="collapse " id="sidebarProject">
                  <ul class="nav nav-sm flex-column">
                    <li class="nav-item">
                      <a href="project-overview.html" class="nav-link ">
                        Overview
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="project-files.html" class="nav-link ">
                        Files
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="project-reports.html" class="nav-link ">
                        Reports
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="project-new.html" class="nav-link ">
                        New project <span class="badge badge-soft-success ml-auto">New</span>
                      </a>
                    </li>
                  </ul>
                </div>
              </li>
              <li class="nav-item">
                <a href="#sidebarTeam" class="nav-link" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarTeam">
                  Team
                </a>
                <div class="collapse " id="sidebarTeam">
                  <ul class="nav nav-sm flex-column">
                    <li class="nav-item">
                      <a href="team-overview.html" class="nav-link ">
                        Overview
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="team-projects.html" class="nav-link ">
                        Projects
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="team-members.html" class="nav-link ">
                        Members
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="team-new.html" class="nav-link ">
                        New team <span class="badge badge-soft-success ml-auto">New</span>
                      </a>
                    </li>
                  </ul>
                </div>
              </li>
              <li class="nav-item">
                <a href="orders.html" class="nav-link ">
                  Orders <span class="badge badge-soft-success ml-auto">New</span>
                </a>
              </li>
              <li class="nav-item">
                <a href="feed.html" class="nav-link ">
                  Feed
                </a>
              </li>
              <li class="nav-item">
                <a href="settings.html" class="nav-link active">
                  Settings
                </a>
              </li>
              <li class="nav-item">
                <a href="invoice.html" class="nav-link ">
                  Invoice <span class="badge badge-soft-success ml-auto">New</span>
                </a>
              </li>
              <li class="nav-item">
                <a href="pricing.html" class="nav-link ">
                  Pricing <span class="badge badge-soft-success ml-auto">New</span>
                </a>
              </li>
            </ul>
          </div>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#sidebarAuth" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarAuth">
            <i class="fe fe-user"></i> Authentication
          </a>
          <div class="collapse" id="sidebarAuth">
            <ul class="nav nav-sm flex-column">
              <li class="nav-item">
                <a href="#sidebarSignIn" class="nav-link" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarSignIn">
                  Sign in
                </a>
                <div class="collapse" id="sidebarSignIn">
                  <ul class="nav nav-sm flex-column">
                    <li class="nav-item">
                      <a href="sign-in-cover.html" class="nav-link">
                        Cover
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="sign-in-illustration.html" class="nav-link">
                        Illustration
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="sign-in.html" class="nav-link">
                        Basic
                      </a>
                    </li>
                  </ul>
                </div>
              </li>
              <li class="nav-item">
                <a href="#sidebarSignUp" class="nav-link" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarSignUp">
                  Sign up
                </a>
                <div class="collapse" id="sidebarSignUp">
                  <ul class="nav nav-sm flex-column">
                    <li class="nav-item">
                      <a href="sign-up-cover.html" class="nav-link">
                        Cover
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="sign-up-illustration.html" class="nav-link">
                        Illustration
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="sign-up.html" class="nav-link">
                        Basic
                      </a>
                    </li>
                  </ul>
                </div>
              </li>
              <li class="nav-item">
                <a href="#sidebarPassword" class="nav-link" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarPassword">
                  Password reset
                </a>
                <div class="collapse" id="sidebarPassword">
                  <ul class="nav nav-sm flex-column">
                    <li class="nav-item">
                      <a href="password-reset-cover.html" class="nav-link">
                        Cover
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="password-reset-illustration.html" class="nav-link">
                        Illustration
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="password-reset.html" class="nav-link">
                        Basic
                      </a>
                    </li>
                  </ul>
                </div>
              </li>
              <li class="nav-item">
                <a href="#sidebarError" class="nav-link" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarError">
                  Error
                </a>
                <div class="collapse" id="sidebarError">
                  <ul class="nav nav-sm flex-column">
                    <li class="nav-item">
                      <a href="error-illustration.html" class="nav-link">
                        Illustration
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="error.html" class="nav-link">
                        Basic
                      </a>
                    </li>
                  </ul>
                </div>
              </li>
            </ul>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link" href="#sidebarLayouts" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarLayouts">
            <i class="fe fe-layout"></i> Layouts
          </a>
          <div class="collapse " id="sidebarLayouts">
            <ul class="nav nav-sm flex-column">
              <li class="nav-item">
                <a href="index.html" class="nav-link">
                  Sidenav
                </a>
              </li>
              <li class="nav-item">
                <a href="dashboard-side-topnav.html" class="nav-link ">
                  Sidenav + top nav
                </a>
              </li>
              <li class="nav-item">
                <a href="dashboard-topnav.html" class="nav-link">
                  Topnav
                </a>
              </li>
              <li class="nav-item">
                <a href="#sidebarDashboard" class="nav-link" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarDashboard">
                  Without hero chart
                </a>
                <div class="collapse " id="sidebarDashboard">
                  <ul class="nav nav-sm flex-column">
                    <li class="nav-item">
                      <a href="dashboard-no-hero.html" class="nav-link ">
                        Sidenav
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="dashboard-side-topnav-no-hero.html" class="nav-link ">
                        Sidenav + top nav
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="dashboard-topnav-no-hero.html" class="nav-link">
                        Topnav
                      </a>
                    </li>
                  </ul>
                </div>
              </li>
            </ul>
          </div>
        </li>
        <li class="nav-item d-md-none">
          <a class="nav-link" href="#sidebarModalActivity" data-toggle="modal">
            <span class="fe fe-bell"></span> Notifications
          </a>
        </li>
      </ul>

      <!-- Divider -->
      <hr class="my-3">

      <!-- Heading -->
      <h6 class="navbar-heading text-muted">
        Documentation
      </h6>

      <!-- Navigation -->
      <ul class="navbar-nav mb-md-3">
        <li class="nav-item">
          <a class="nav-link " href="getting-started.html">
            <i class="fe fe-clipboard"></i> Getting started
          </a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link" href="#sidebarComponents" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarComponents">
            <i class="fe fe-book-open"></i> Components
          </a>
          <div class="collapse " id="sidebarComponents">
            <ul class="nav nav-sm flex-column">
              <li class="nav-item">
                <a href="components.html#alerts" class="nav-link">
                  Alerts
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#avatars" class="nav-link">
                  Avatars
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#badges" class="nav-link">
                  Badges
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#breadcrumb" class="nav-link">
                  Breadcrumb
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#buttons" class="nav-link">
                  Buttons
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#button-group" class="nav-link">
                  Button group
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#cards" class="nav-link">
                  Cards
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#charts" class="nav-link">
                  Charts
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#dropdowns" class="nav-link">
                  Dropdowns
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#forms" class="nav-link">
                  Forms
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#icons" class="nav-link">
                  Icons
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#lists" class="nav-link">
                  Lists
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#loaders" class="nav-link">
                  Loaders
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#modal" class="nav-link">
                  Modal
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#navs" class="nav-link">
                  Navs
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#navbar" class="nav-link">
                  Navbar
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#page-headers" class="nav-link">
                  Page headers
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#pagination" class="nav-link">
                  Pagination
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#popovers" class="nav-link">
                  Popovers
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#progress" class="nav-link">
                  Progress
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#social-posts" class="nav-link">
                  Social post
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#tables" class="nav-link">
                  Tables
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#tooltips" class="nav-link">
                  Tooltips
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#typography" class="nav-link">
                  Typography
                </a>
              </li>
              <li class="nav-item">
                <a href="components.html#utilities" class="nav-link">
                  Utilities
                </a>
              </li>
            </ul>
          </div>
        </li>
        <li class="nav-item">
          <a class="nav-link " href="changelog.html">
            <i class="fe fe-git-branch"></i> Changelog <span class="badge badge-primary ml-auto">v1.1.1</span>
          </a>
        </li>
      </ul>



      <!-- User (md) -->
      <div class="navbar-user mt-auto d-none d-md-flex">

        <!-- Icon -->
        <a href="#sidebarModalActivity" class="text-muted" data-toggle="modal">
              <span class="icon">
                <i class="fe fe-bell"></i>
              </span>
        </a>

        <!-- Dropup -->
        <div class="dropup">

          <!-- Toggle -->
          <a href="#!" id="sidebarIconCopy" class="dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <div class="avatar avatar-sm avatar-online">
              <img src="${pageContext.request.contextPath}/assets/img/avatars/profiles/avatar-1.jpg" class="avatar-img rounded-circle" alt="...">
            </div>
          </a>

          <!-- Menu -->
          <div class="dropdown-menu" aria-labelledby="sidebarIconCopy">
            <a href="profile-posts.html" class="dropdown-item">Profile</a>
            <a href="settings.html" class="dropdown-item">Settings</a>
            <hr class="dropdown-divider">
            <a href="sign-in.html" class="dropdown-item">Logout</a>
          </div>

        </div>

        <!-- Icon -->
        <a href="#sidebarModalSearch" class="text-muted" data-toggle="modal">
              <span class="icon">
                <i class="fe fe-search"></i>
              </span>
        </a>

      </div>


    </div> <!-- / .navbar-collapse -->

  </div> <!-- / .container-fluid -->
</nav>

<!-- MAIN CONTENT
================================================== -->
<div class="main-content">
  <div class="container-fluid">
    <div class="row justify-content-center">
      <div class="col-12 col-lg-10 col-xl-8">

        <!-- Header -->
        <div class="header mt-md-5">
          <div class="header-body">
            <div class="row align-items-center">
              <div class="col">

                <!-- Pretitle -->
                <h6 class="header-pretitle">
                  Overview
                </h6>

                <!-- Title -->
                <h1 class="header-title">
                  Settings
                </h1>

              </div>
            </div> <!-- / .row -->
            <div class="row align-items-center">
              <div class="col">

                <!-- Nav -->
                <ul class="nav nav-tabs nav-overflow header-tabs">
                  <li class="nav-item">
                    <a href="#!" class="nav-link active">
                      General
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="#!" class="nav-link">
                      Profile
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="#!" class="nav-link">
                      Billing
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="#!" class="nav-link">
                      Notifications
                    </a>
                  </li>
                </ul>

              </div>
            </div>
          </div>
        </div>

        <!-- Form -->
        <form class="mb-4">

          <div class="row">
            <div class="col-12 col-md-6">

              <!-- First name -->
              <div class="form-group">

                <!-- Label -->
                <label>
                  First name
                </label>

                <!-- Input -->
                <input type="text" name="first-name" class="form-control" placeholder="Jone">

              </div>

            </div>
            <div class="col-12 col-md-6">

              <!-- Last name -->
              <div class="form-group">

                <!-- Label -->
                <label>
                  Last name
                </label>

                <!-- Input -->
                <input type="text" name="last-name" class="form-control" placeholder="Doe">

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
                <input type="email" name="user_email" class="form-control" value="<%= user_data[2] %>">

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
                <input type="text" class="form-control mb-3" name="user_ph_no" placeholder="(___)___-____" data-mask="(000) 000-0000">

              </div>

            </div>

            <div class="col-12 col-md-6">
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
                    <input type="checkbox" class="custom-control-input" id="toggleTwo" checked>
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
          <button type="submit" name="update_profile" class="btn btn-primary">
            Update password
          </button>

        </div>
      </div> <!-- / .row -->

      </form>

    </div>
  </div> <!-- / .row -->
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

</body>
</html>