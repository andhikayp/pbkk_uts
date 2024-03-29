<!doctype html>
<html lang="en" class="no-focus">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">

        <title>@yield('title')</title>

        <meta name="description" content="Codebase - Bootstrap 4 Admin Template &amp; UI Framework created by pixelcave and published on Themeforest">
        <meta name="author" content="pixelcave">
        <meta name="robots" content="noindex, nofollow">

        <!-- Open Graph Meta -->
        <meta property="og:title" content="Codebase - Bootstrap 4 Admin Template &amp; UI Framework">
        <meta property="og:site_name" content="Codebase">
        <meta property="og:description" content="Codebase - Bootstrap 4 Admin Template &amp; UI Framework created by pixelcave and published on Themeforest">
        <meta property="og:type" content="website">
        <meta property="og:url" content="">
        <meta property="og:image" content="">

        <!-- Icons -->
        <!-- The following icons can be replaced with your own, they are used by desktop and mobile browsers -->
        <link rel="shortcut icon" href="">
        <link rel="icon" type="image/png" sizes="192x192" href="">
        <link rel="apple-touch-icon" sizes="180x180" href="">
        <!-- END Icons -->

        <!-- Stylesheets -->

        <!-- Fonts and Codebase framework -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Muli:300,400,400i,600,700">
        <link rel="stylesheet" id="css-main" href="<?php echo base_url(); ?>codebase/src/assets/css/codebase.min.css">
    </head>

    <body>
        <div id="page-container" class="main-content-boxed">

            <!-- Main Container -->
            <main id="main-container">

                @yield('content')
                
            </main>
            <!-- END Main Container -->
        </div>
        <!-- END Page Container -->
        <script src="<?php echo base_url(); ?>codebase/src/assets/js/codebase.core.min.js"></script>
        <script src="<?php echo base_url(); ?>codebase/src/assets/js/codebase.app.min.js"></script>
        <!-- Page JS Plugins -->
        <script src="<?php echo base_url(); ?>codebase/src/assets/js/plugins/jquery-validation/jquery.validate.min.js"></script>
        <!-- Page JS Code -->
        <script src="<?php echo base_url(); ?>js/op_auth_signin.js"></script>
    </body>
</html>