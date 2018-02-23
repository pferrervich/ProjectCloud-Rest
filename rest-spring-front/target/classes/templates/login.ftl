<html>
<head>
    <title>Login page</title>
    <!-- Bootstrap -->
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!-- CSS in /css -->
    <link rel="stylesheet" type="text/css" href="">
</head>
<body>

<!-- Formulari per fer login -->

<div class="container">

    <div class="row" style="margin-top:20px">
        <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
            <form action="/login" method="post" role="form">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <fieldset>
                    <h2>Por favor, entre con su usuario</h2>
                    <hr class="colorgraph">
                    <div class="form-group">
                        <input type="text" name="username" id="user" class="form-control input-lg" placeholder="Nombre de usuario">
                    </div>
                    <div class="form-group">
                        <input type="password" name="password" id="password" class="form-control input-lg" placeholder="Contraseña">
                    </div>
                    <span class="button-checkbox">
					<!--<button type="button" class="btn" data-color="info">Remember Me</button>
                        <input type="checkbox" name="remember_me" id="remember_me" checked="checked" class="hidden">
					<a href="" class="btn btn-link pull-right">Forgot Password?</a> -->
				</span>
                    <hr class="colorgraph">
                    <div class="row">
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <input type="submit" class="btn btn-lg btn-success btn-block" value="Login">
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <a href="" class="btn btn-lg btn-primary btn-block">Register</a>
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
    </div>
<#if error.isPresent()>
<p>Something went grong. Please try again later.</p>
</#if>
</div>
</body>
</html>
<!-- https://bootsnipp.com/snippets/featured/mix-amp-match-login -->