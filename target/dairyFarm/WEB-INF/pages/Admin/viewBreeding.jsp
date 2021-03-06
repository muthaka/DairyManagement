<%--
  Created by IntelliJ IDEA.
  User: MUTHAKA
  Date: 2/6/2015
  Time: 7:35 AM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page session="true" %>

<html lang="en">

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>Dairy-Farm-Management</title>

	<!-- jQuery -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>


	<!-- Bootstrap Core CSS -->
	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">

	<!-- Custom CSS -->
	<link href="${pageContext.request.contextPath}/resources/css/sb-admin.css" rel="stylesheet">

	<!-- Custom Fonts -->
	<link href="${pageContext.request.contextPath}/resources/font-awesome/css/font-awesome.min.css" rel="stylesheet"
	      type="text/css">

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="${pageContext.request.contextPath}/resources/js/html5shiv.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/respond.min.js"></script>
	<![endif]-->

	<script type="text/javascript">
		window.setTimeout(function () {
			$("#viewGroup_message_alert").fadeTo(500, 0).slideUp(500, function () {
				$(this).add();
			});
		}, 2500);
	</script>

	<script type="text/javascript">
		window.setTimeout(function () {
			$("#loadGroup_message_alert").fadeTo(500, 0).slideUp(500, function () {
				$(this).show();
			});
		}, 2500);
	</script>

	<!-- modal update cow js -->
	<script type="text/javascript">
		$(document).ready(function () {
			$(".cowUpdate").click(function () { // Click to only happen on announce links
				$("#breedId").val($(this).data('bid'));
				$("#cowId").val($(this).data('id'));
				$("#semenType").val($(this).data('sem'));
				$("#nameOfSeminator").val($(this).data('nm'));
				$("#breedingCost").val($(this).data('bc'));
				$("#date").val($(this).data('d'));
				$('#cowUpdate').modal('show');
			});
		});
	</script>

	<script type="text/javascript">
		$(document).ready(function () {
			$('a[data-confirm]').click(function (ev) {
				var href = $(this).attr('href');
				if (!$('#dataConfirmModal').length) {
					$('body').append('<div class="modal fade" id="dataConfirmModal" tabindex="-1" role="dialog" aria-labelledby="dataConfirmLabel" aria-hidden="true"><div class="modal-dialog modal-sm"><div class="modal-content"><div class="modal-header bg-black"><h4 class="modal-title center" id="myModalLabel">Please Confirm</h4></div><div class="modal-body center"></div><div class="modal-footer"><a class="btn btn-danger btn-sm" id="dataConfirmOK"><i class="ion ion-ios7-trash"></i> Delete</a><button class="btn btn-info btn-sm" data-dismiss="modal" aria-hidden="true"><i class="fa fa-remove"></i> Cancel</button></div></div></div></div>');
				}
				$('#dataConfirmModal').find('.modal-body').text($(this).attr('data-confirm'));
				$('#dataConfirmOK').attr('href', href);
				$('#dataConfirmModal').modal({show: true});
				return false;
			});
		});
	</script>

</head>

<body>

<c:url var="editAction" value="/dairyAdmin/breeding/edit"/>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:url var="logout" value="/j_spring_security_logout"/>
<div id="wrapper">

	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${contextPath}/dairyAdmin">Dairy-Farm-Management</a>
		</div>
		<!-- Top Menu Items -->
		<ul class="nav navbar-right top-nav">
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> <b
						class="caret"></b></a>
				<ul class="dropdown-menu message-dropdown">
					<li class="message-preview">
						<a href="#">
							<div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>

								<div class="media-body">
									<h5 class="media-heading">
										<strong>${dairyAdminNm} </strong>
									</h5>

									<p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>

									<p>Lorem ipsum dolor sit amet, consectetur...</p>
								</div>
							</div>
						</a>
					</li>
					<li class="message-preview">
						<a href="#">
							<div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>

								<div class="media-body">
									<h5 class="media-heading">
										<strong>${dairyAdminNm} </strong>
									</h5>

									<p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>

									<p>Lorem ipsum dolor sit amet, consectetur...</p>
								</div>
							</div>
						</a>
					</li>
					<li class="message-preview">
						<a href="#">
							<div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>

								<div class="media-body">
									<h5 class="media-heading">
										<strong>${dairyAdminNm}</strong>
									</h5>

									<p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>

									<p>Lorem ipsum dolor sit amet, consectetur...</p>
								</div>
							</div>
						</a>
					</li>
					<li class="message-footer">
						<a href="#">Read All New Messages</a>
					</li>
				</ul>
			</li>
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b
						class="caret"></b></a>
				<ul class="dropdown-menu alert-dropdown">
					<li>
						<a href="#">Alert Name <span class="label label-default">Alert Badge</span></a>
					</li>
					<li>
						<a href="#">Alert Name <span class="label label-primary">Alert Badge</span></a>
					</li>
					<li>
						<a href="#">Alert Name <span class="label label-success">Alert Badge</span></a>
					</li>
					<li>
						<a href="#">Alert Name <span class="label label-info">Alert Badge</span></a>
					</li>
					<li>
						<a href="#">Alert Name <span class="label label-warning">Alert Badge</span></a>
					</li>
					<li>
						<a href="#">Alert Name <span class="label label-danger">Alert Badge</span></a>
					</li>
					<li class="divider"></li>
					<li>
						<a href="#">View All</a>
					</li>
				</ul>
			</li>
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> ${dairyAdminNm} <b
						class="caret"></b></a>
				<ul class="dropdown-menu">
					<li>
						<a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
					</li>
					<li>
						<a href="#"><i class="fa fa-fw fa-envelope"></i> Inbox</a>
					</li>
					<li>
						<a href="#"><i class="fa fa-fw fa-gear"></i> Settings</a>
					</li>
					<li class="divider"></li>
					<li>
						<a href="${logout}"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
					</li>
				</ul>
			</li>
		</ul>
		<!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
		<div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav side-nav">
				<li>
					<a href="${contextPath}/dairyAdmin"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
				</li>
				<li>
					<a href="${contextPath}/dairyAdmin/regHerd"><i class="fa fa-fw fa-edit"></i> Register a Cow</a>
				</li>
				<li>
					<a href="${contextPath}/dairyAdmin/milkProduced"><i class="fa fa-fw fa-edit"></i> Enter Milk Produced</a>
				</li>
				<li>
					<a href="${contextPath}/dairyAdmin/breeding"><i class="fa fa-fw fa-edit"></i> Enter Breeding Information</a>
				</li>
				<li>
					<a href="${contextPath}/dairyAdmin/mealTaken"><i class="fa fa-fw fa-edit"></i> Enter Meal Information</a>
				</li>
				<li>
					<a href="${contextPath}/dairyAdmin/cowHealth"><i class="fa fa-fw fa-edit"></i> Enter Health
						Information</a>
				</li>
				<li>
					<a href="${contextPath}/dairyAdmin/sellMilk"><i class="fa fa-bitbucket"></i> Sell Milk</a>
				</li>
				<li>
					<a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-arrows-v"></i>
						Dropdown <i class="fa fa-fw fa-caret-down"></i></a>
					<ul id="demo" class="collapse">
						<li>
							<a href="${contextPath}/dairyAdmin/adminRegistration">Register Another Admin</a>
						</li>
						<li>
							<a href="${contextPath}/dairyAdmin/workerRegistration">Register a Worker</a>
						</li>
					</ul>
				</li>
				<li>
					<a href="${contextPath}/dairyAdmin/blankPage"><i class="fa fa-fw fa-file"></i> Blank Page</a>
				</li>
				<li>
					<a href="rtl.jsp"><i class="fa fa-fw fa-dashboard"></i> RTL Dashboard</a>
				</li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</nav>

	<div id="page-wrapper">

		<div class="container-fluid">

			<!-- Page Heading -->
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">
						Dairy-Farm-Management-System
						<small>Statistics Overview</small>
					</h1>
					<ol class="breadcrumb">
						<li>
							<i class="fa fa-dashboard"></i> <a href="${contextPath}/dairyAdmin">Dashboard</a>
						</li>
						<li>
							<i class="fa fa-file"></i> Cow Breed Page
						</li>
					</ol>
				</div>
			</div>
			<!-- /.row1 -->


			<div class="row">
				<div class="col-lg-6">
					<form>

						<input type="text" id="search" name="search" placeholder="search">
						<button type="submit" class="btn btn-default">Search</button>
					</form>

				</div>
			</div>
			<!-- /.row1 -->

			<!-- /.row2 -->


			<div class="row">


				<div class="col-lg-12">

					<form role="form">

						<h4>Breeding Information</h4>

						<div id="mydata">
							<br/>
							<c:if test="${not empty error}">
								<div class="alert alert-danger" id="viewGroup_error_alert"><i class="fa fa-ban"></i> ${error}
								</div>
							</c:if>
							<c:if test="${not empty message}">
								<div class="alert alert-success" id="viewGroup_message_alert"><i
										class="fa fa-check"></i> ${message}</div>
							</c:if>
							<c:if test="${not empty info}">
								<div class="alert alert-info" id="loadGroup_message_alert"><i
										class="fa fa-info-circle"></i> ${info}</div>
							</c:if>
							<br/>

							<c:if test="${!empty listBreeding}">
								<table class="table table-bordered table-hover table-striped" id="breeding">

									<thead>
									<tr>
										<th>Cow-Id</th>
										<th>Semen-Type</th>
										<th>Name-Of-Seminator</th>
										<th>Cost</th>
										<th>Date</th>
										<th width="40px"></th>


									</tr>
									</thead>
									<tbody>
									<c:forEach items="${listBreeding}" var="breeding">
										<tr>
											<td>${breeding.cowId}</td>
											<td>${breeding.semenType}</td>
											<td>${breeding.nameOfSeminator}</td>
											<td>${breeding.breedingCost}</td>
											<td>${breeding.date}</td>
											<td width="40px">
												<a href="#"
												   class="btn btn-danger btn-sm cowUpdate " data-toggle="tooltip"
												   data-placement="top" title="Edit"
												   data-bid="${breeding.breedId}"
												   data-id="${breeding.cowId}"
												   data-sem="${breeding.semenType}"
												   data-nm="${breeding.nameOfSeminator}"
												   data-bc="${breeding.breedingCost}"
												   data-d="${breeding.date}"><i class="fa fa-bucket">Edit</i></a>

											</td>


										</tr>
									</c:forEach>

									</tbody>
								</table>
							</c:if>

							<c:if test="${empty listBreeding}">
								<table id="breeding" class="table table-bordered table-hover table-striped" width="100%"
								       cellspacing="0">
									<thead>
									<tr>
										<th>Cow-Id</th>
										<th>Semen-Type</th>
										<th>Name-Of-Seminator</th>
										<th>Cost</th>
										<th>Date</th>
										<th width="40px"></th>

									</tr>
									</thead>
									<tbody>
									<c:forEach items="${listBreeding}" var="breeding">

									</c:forEach>
									</tbody>
								</table>
							</c:if>


						</div>


					</form>
				</div>

			</div>

			<!-- /.row2 -->
		</div>

		<!-- Modal -->
		<%--Start cow update modal--%>
		<form:form action="${editAction}" commandName="breeding"
		           id="breeding" method="post">
			<div class="modal fade" id="cowUpdate" tabindex="-1" role="dialog"
			     aria-labelledby="studentsAddition" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header  bg-black">
							<a href="#" class="btn btn-danger btn-sm closebtn" aria-hidden="true"
							   data-dismiss="modal"><i class="ion ion-ios7-trash"></i> Close</a>
							<h4 class="modal-title center" id="cowUpdatemodal">Cow
								Update</h4>
						</div>
						<div class="modal-body" id="modalUpdateCow">
							<div class="row">

								<div class="col-lg-6">
									<label>Cow Id : </label>

									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-user-md"></i></span>
										<input class="form-control" type="text" id="cowId" name="cowId"  readonly/>
									</div>
								</div>


								<div class="col-lg-6">
									<label>Semen Type : </label>

									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-user-md"></i></span>
										<input class="form-control" type="text" id="semenType" name="semenType"  />
									</div>
								</div>

							</div>
							<br/>

							<div class="row">

								<div class="col-lg-6">
									<label>Name Of Seminatior :</label>

									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-user"></i></span>
										<input class="form-control" type="text" id="nameOfSeminator" name="nameOfSeminator" />
									</div>
								</div>

								<div class="col-lg-6">
									<label>Breeding Cost : </label>

									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-user-md"></i></span>
										<input class="form-control" type="text" id="breedingCost" name="breedingCost"  />
									</div>
								</div>

							</div>

							<div class="row">

								<div class="col-lg-6">
									<label>Date : </label>

									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-user-md"></i></span>
										<input class="form-control" type="text" id="date" name="date"  readonly/>
									</div>
								</div>

								<div class="col-lg-6">
									<%--<label>Breeding Id :</label>--%>

									<div class="input-group">
										<%--<span class="input-group-addon"><i class="fa fa-user"></i></span>--%>
										<input class="form-control" type="hidden" id="breedId" name="breedId"  />
									</div>
								</div>

							</div>

							<div class="row">
								<div class="col-lg-4">
								</div>
								<div class="col-lg-4">
									<button class="btn btn-success pull-right" type="submit">
										<i
												class="fa fa-check-circle-o"></i> Submit
									</button>
								</div>
								<div class="col-lg-4">
									<a href="#" class="btn btn-danger btn-sm closebtn pull-right" aria-hidden="true"
									   data-dismiss="modal"><i class="ion ion-ios7-trash "></i> Cancel</a>
								</div>
									<%--<div class="col-lg-4">--%>
									<%--<button class="btn btn-danger pull-right" type="reset"><i--%>
									<%--class="fa fa-ban"></i>--%>
									<%--Reset--%>
									<%--</button>--%>
									<%--</div>--%>
							</div>
							<br/>
						</div>
						<div class="modal-footer">
							<p class="text-center small-box-footer">Copyrights &copy;
								2015 DFMS |
								Designed &amp;
								Maintained
								by : <a rel="nofollow"
								        href="http://www.api-crafttech.com"
								        target="_blank">PETSAMOD</a> <a
										rel="nofollow"
										href=""></a></p>
						</div>
					</div>
				</div>
			</div>
		</form:form>
		<%--End cow update modal--%>

		<!-- /.container-fluid -->

	</div>
	<!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->


<!-- Bootstrap Core JavaScript -->
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>

</body>

</html>
