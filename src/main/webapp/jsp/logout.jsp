<%
  HttpSession newsession = request.getSession(false);
  if (newsession != null)
  {
    newsession.invalidate();

  }
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

    <title>Dashkit</title>
  </head>
  <body class="d-flex align-items-center bg-white border-top-2 border-primary">

    <!-- CONTENT
    ================================================== -->
    <div class="container">
      <div class="row align-items-center">
        <div class="col-12 col-md-6 offset-xl-2 offset-md-1 order-md-2 mb-5 mb-md-0">

          <!-- Image -->
          <div class="text-center">
            <img src="${pageContext.request.contextPath}/assets/img/illustrations/lost.svg" alt="..." class="img-fluid">
          </div>

        </div>
        <div class="col-12 col-md-5 col-xl-4 order-md-1 my-5">
          
          <div class="text-center">
          
            <!-- Preheading -->
            <h6 class="text-uppercase text-muted mb-4">
                Organic Favour
            </h6>

            <!-- Heading -->
            <h1 class="display-4 mb-3">
              Bye! See you later...
            </h1>

            <!-- Subheading -->
            <p class="text-muted mb-4">
              Thanks for using our service 🤝
            </p>

            <!-- Button -->
            <a href="home" class="btn btn-lg btn-primary">
              Return to Home
            </a>
          
          </div>

        </div>
      </div> <!-- / .row -->
    </div> <!-- / .container -->

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