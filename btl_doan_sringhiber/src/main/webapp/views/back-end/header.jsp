<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="top_nav">
	<div class="nav_menu">
		<div class="nav toggle">
			<a id="menu_toggle"><i class="fa fa-bars"></i></a>
		</div>
		<nav class="nav navbar-nav">
			<ul class=" navbar-right">
				<li class="nav-item dropdown open" style="padding-left: 15px;">
					<a href="javascript:;" class="user-profile dropdown-toggle"
					aria-haspopup="true" id="navbarDropdown" data-toggle="dropdown"
					aria-expanded="false">
						${pageContext.request.userPrincipal.name} </a>
					<div class="dropdown-menu dropdown-usermenu pull-right"
						aria-labelledby="navbarDropdown">
						<div class="dropdown-item"><i
							class="fa fa-sign-out pull-right"></i> 
								<form action="<c:url value="/j_spring_security_logout" />"
										method="post">
										<input style="background: none; border: none;" type="hidden" name="${_csrf.parameterName}"
											value="${_csrf.token}" /> <i class="fas fa-sign-out-alt"></i><input
											class="stext-102 cl2 hov-cl1 trans-04" type="submit"
											value="Logout" style="background: none;border: none;"/>
									</form></div>
					</div>
				</li>

				<li role="presentation" class="nav-item dropdown open">
					<ul class="dropdown-menu list-unstyled msg_list" role="menu"
						aria-labelledby="navbarDropdown1">
						<li class="nav-item"><a class="dropdown-item"> <span
								class="image"><img
									src="<c:url value="../resources"/>images/img.jpg"
									alt="Profile Image" /></span> <span> <span>John Smith</span> <span
									class="time">3 mins ago</span>
							</span> <span class="message"> Film festivals used to be
									do-or-die moments for movie makers. They were where... </span>
						</a></li>
						<li class="nav-item"><a class="dropdown-item"> <span
								class="image"><img src="images/img.jpg"
									alt="Profile Image" /></span> <span> <span>John Smith</span> <span
									class="time">3 mins ago</span>
							</span> <span class="message"> Film festivals used to be
									do-or-die moments for movie makers. They were where... </span>
						</a></li>
						<li class="nav-item"><a class="dropdown-item"> <span
								class="image"><img src="images/img.jpg"
									alt="Profile Image" /></span> <span> <span>John Smith</span> <span
									class="time">3 mins ago</span>
							</span> <span class="message"> Film festivals used to be
									do-or-die moments for movie makers. They were where... </span>
						</a></li>
						<li class="nav-item"><a class="dropdown-item"> <span
								class="image"><img
									src="<c:url value="resources"/>/images/img.jpg"
									alt="Profile Image" /></span> <span> <span>John Smith</span> <span
									class="time">3 mins ago</span>
							</span> <span class="message"> Film festivals used to be
									do-or-die moments for movie makers. They were where... </span>
						</a></li>
						<li class="nav-item">
							<div class="text-center">
								<a class="dropdown-item"> <strong>See All Alerts</strong> <i
									class="fa fa-angle-right"></i>
								</a>
							</div>
						</li>
					</ul>
				</li>
			</ul>
		</nav>
	</div>
</div>