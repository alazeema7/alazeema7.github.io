<?php

if(isset($_POST['submit']))
{
	if($_POST['password'] == PASSWORD && $_POST['name'] == NAME)
	{
		$_SESSION['logged'] = true;
		header("Location: index.php");
	}
}
?>
<!DOCTYPE html>
<html>
<head>
	<link rel='stylesheet' href='bootstrap/css/bootstrap.min.css' />
	<link rel='stylesheet' href='bootstrap/css/bootstrap-responsive.min.css' />
	<link rel='stylesheet' href='style.css' />
	<!-- Loading Flat UI -->
    <link href="css/flat-ui.css" rel="stylesheet">
    <link rel="shortcut icon" href="images/favicon.ico">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
    <![endif]-->
  </head>
	<title>Login</title>
</head>
<body class="login-screen">
	<div class='login-box'>
	<div class="login-icon">
	<h4>Welcome to <small>Delivery Manager</small></h4>
	</div>

	<div class="login-form">
	<div class="control-group">
      <form action='' method='post'>
		  <input type="text" class="login-field" value="" placeholder="Enter your name" id="login-name" name='name' />
		  <label class="login-field-icon fui-man-16" for="login-name"></label>

	</div>

	<div class="control-group">
	  <input type="password" class="login-field" value="" placeholder="Password" id="login-pass" name='password' />
	  <label class="login-field-icon fui-lock-16" for="login-pass"></label>
	</div>

	<input type='submit' name='submit' class="btn btn-primary btn-large btn-block" value='Login' />
	</form>
	<div class='error_message'>
		<?php 
			if($response->isError == true)
				echo $response->ErrorMessage;
		?>
	</div>	
	<a class="login-link" href="#">Lost your password?</a>
	</div>
	</div>
</body>
</html>
