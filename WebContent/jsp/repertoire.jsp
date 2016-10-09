<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="s" uri="/struts-tags"%>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->

<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->

<head>
<meta charset="UTF-8">

<!-- Remove this line if you use the .htaccess -->
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<meta name="viewport" content="width=device-width">

<meta name="description"
	content="Designa Studio, a HTML5 / CSS3 template.">
<meta name="author"
	content="Sylvain Lafitte, Web Designer, sylvainlafitte.com">

<title>Repertoire</title>

<link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
<link rel="shortcut icon" type="image/png" href="favicon.png">

<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/style.css">
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all"
	rel="stylesheet" type="text/css" />
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN THEME STYLES -->

<link rel="stylesheet" href="css/DT_bootstrap.css" />
<link href="css/style2.css" rel="stylesheet" type="text/css" />
<link href="css/style-responsive.css" rel="stylesheet" type="text/css" />
<link href="css/light.css" rel="stylesheet" type="text/css"
	id="style_color" />
<link rel="stylesheet" type="text/css" href="css/datepicker.css" />
<link rel="stylesheet" type="text/css" href="css/datetimepicker.css" />
<!--[if lt IE 9]>
	<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
</head>



<body>
	<!-- Prompt IE 7 users to install Chrome Frame -->
	<!--[if lt IE 8]><p class=chromeframe>Your browser is <em>ancient!</em> <a href="http://browsehappy.com/">Upgrade to a different browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to experience this site.</p><![endif]-->

	<div class="container">

		<header id="navtop"> <a href="index.html" class="logo fleft">
			<img src="images/logo.png" alt="Designa Studio">
		</a> <nav class="fleft head"> </nav>
		<div class="fright">
			<h2>Youssef Yazami</h2>
			<a href="#" class="fright">Déconnecter</a>
		</div>
		<div class="grid col-full center">
			<hr>
		</div>
		</header>



		<aside class="grid col-one-quarter mq2-col-full fleft">

		<div class="page-sidebar-wrapper">
			<div class="page-sidebar navbar-collapse collapse">
				<!-- BEGIN SIDEBAR MENU -->
				<ul class="page-sidebar-menu" data-auto-scroll="false"
					data-slide-speed="200">

					<li><a href="index.html"> <i class="fa fa-home"></i> <span
							class="title"> Accueil </span>
					</a></li>
					<li><a href="javascript:;"> <i class="fa fa-user"></i> <span
							class="title"> Profile </span> <span class="arrow "> </span>
					</a>
						<ul class="sub-menu">
							<li><a href="maFicheSignaletique.html"> Ma fiche
									signalétique </a></li>

							<li><a href="changerPassword.html"> Changer mot de passe
							</a></li>
						</ul></li>
					<li class="active "><a href="listCompagne.html"> <i
							class="fa fa-folder-open"></i> <span class="title"> Agenda
						</span>

					</a></li>
					<li><a href="javascript:;"> <i class="fa fa-file-text"></i>
							<span class="title"> Repertoire </span> <span class="arrow ">
						</span>
					</a></li>


				</ul>
				<!-- END SIDEBAR MENU -->
			</div>
		</div>
		</aside>
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">



			<!-- BEGIN PAGE HEADER-->
			<div class="row">
				<div class="col-md-12">
					<!-- BEGIN PAGE TITLE & BREADCRUMB-->
					<h3 class="page-title">Repertoire</h3>
					<ul class="page-breadcrumb breadcrumb">

						<li><i class="fa fa-home"></i> <a href="index.html">
								Accueil </a> <i class="fa fa-angle-right"></i></li>
						<li><i class="fa fa-folder-open"></i> Repertoire</li>

					</ul>
					<!-- END PAGE TITLE & BREADCRUMB-->
				</div>
			</div>
			<!-- END PAGE HEADER-->
			<!-- BEGIN PAGE CONTENT-->
			<div class="row">
				<div class="col-md-10 ">
					<!-- BEGIN SAMPLE FORM PORTLET-->
					<div class="portlet box light-grey ">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-plus"></i> Gérer ma Repertoire
							</div>
							<div class="tools">
								<a href="" class="collapse"> </a>

							</div>
						</div>
						<div class="portlet-body form">

							<s:form class="form-horizontal" action="/addRepertoire"
								method="POST">
								<s:hidden name="repertoire.idrep" />
								<div class="form-body">

									<div class="form-group">
										<s:label class="col-md-3 control-label" path="nomc">Nom contact :
										<span class="required"> * </span>
										</s:label>
										<div class="col-md-7">
											<s:textfield type="text"
												class="form-control input-inline input-medium"
												name="repertoire.nomc" placeholder="Nom contact" />
											<span class="help-inline"> </span>
										</div>
									</div>
									<div class="form-group">
										<s:label class="col-md-3 control-label" path="prenomc">Prenom contact :
										<span class="required"> * </span>
										</s:label>
										<div class="col-md-7">
											<s:textfield type="text"
												class="form-control input-inline input-medium"
												name="repertoire.prenomc" placeholder="Prenom contact" />
											<span class="help-inline"> </span>
										</div>
									</div>
									<div class="form-group">
										<s:label class="col-md-3 control-label" path="numfixe">Numero Fixe:
										<span class="required"> * </span>
										</s:label>
										<div class="col-md-7">
											<s:textfield type="text"
												class="form-control input-inline input-medium"
												name="repertoire.numfixe" placeholder="Fixe" />
											<span class="help-inline"> </span>
										</div>
									</div>
									<div class="form-group">
										<s:label class="col-md-3 control-label" path="nummob">Numero Portable :
										<span class="required"> * </span>
										</s:label>
										<div class="col-md-7">
											<s:textfield type="text"
												class="form-control input-inline input-medium"
												name="repertoire.nummob" placeholder="Mobile" />
											<span class="help-inline"> </span>
										</div>
									</div>

								</div>
								<div class="form-actions fluid">
									<div class="col-md-offset-3 col-md-9">
										<input type="submit" class="btn green" value="Enregistrer" />
										<button type="button" class="btn default">Annuler</button>
									</div>
								</div>
							</s:form>
						</div>
					</div>
					<!-- END SAMPLE FORM PORTLET-->

				</div>
			</div>
			<div class="row">
				<div class="col-md-10">
					<!-- BEGIN EXAMPLE TABLE PORTLET-->
					<div class="portlet box light-grey">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-folder-open"></i>Listes des contacts
							</div>
							<div class="tools">
								<a href="javascript:;" class="collapse"> </a>

							</div>

						</div>
						<div class="portlet-body">

							<table class="table table-striped table-bordered table-hover"
								id="sample_1">
								<thead>
									<tr>

										<th>Nom Contact</th>
										<th>Prenom Contact</th>
										<th>Numero Fixe</th>
										<th>Numero Mobile</th>
										<th>Supprimer</th>


									</tr>
								</thead>
								<tbody>
									<s:iterator value="repertoires">

										<tr class="odd gradeX">

											<td>${nomc}</td>
											<td>${prenomc}</td>
											<td>${numfixe}</td>
											<td>${nummob}</td>

											<td class="center"><s:url id="deleteRepertoire"
													action="deleteRepertoire">
													<s:param name="repertoire.idrep" value="%{idrep}" />
												</s:url> <a href="<s:property value="deleteRepertoire"/>">delete</a></td>

										</tr>

									</s:iterator>
								</tbody>
							</table>
						</div>
					</div>
					<!-- END EXAMPLE TABLE PORTLET-->
				</div>

			</div>
			<!-- END CONTENT -->

			<!-- END CONTAINER -->
		</div>

	</div>



	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- BEGIN CORE PLUGINS -->
	<!--[if lt IE 9]>
<script src="js/respond.min.js"></script>
<script src="js/excanvas.min.js"></script> 
<![endif]-->
	<script src="js/jquery-1.10.2.min.js" type="text/javascript"></script>
	<script src="js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<script src="js/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
	<script src="js/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="js/jquery.blockui.min.js" type="text/javascript"></script>
	<script src="js/jquery.cokie.min.js" type="text/javascript"></script>
	<script src="js/jquery.uniform.min.js" type="text/javascript"></script>
	<!-- END CORE PLUGINS -->
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script type="text/javascript" src="js/select2.min.js"></script>
	<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="js/DT_bootstrap.js"></script>
	<script type="text/javascript" src="js/bootstrap-datepicker.js"></script>
	<script type="text/javascript" src="js/bootstrap-datetimepicker.min.js"></script>
	<script src="js/bootstrap-maxlength.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.touchspin.js" type="text/javascript"></script>
	<script type="text/javascript" src="js/jquery.fancybox.pack.js"></script>
	<script src="js/plupload.full.min.js" type="text/javascript"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="js/app.js"></script>
	<script src="js/table-managed.js"></script>
	<script src="js/ecommerce-products-edit.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			TableManaged.init();
			EcommerceProductsEdit.init();
		});
	</script>
</body>

</html>