<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<title>Cancelación de clase</title>
	<!-- meta, css, vendor, etc. -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<%@ include file="../../parts/meta.jsp" %> 
	<!-- fin del meta, css, vendor, etc -->
</head>
<body class="animsition">

	<!-- Header -->
<%@ include file="../../parts/header.jsp" %> 
	<!-- fin header -->
	<!-- Sidebar -->
<%@ include file="../../parts/sidebar.jsp" %> 
	<!-- fin sidebar -->
	
	
	<section class="section-welcome bg1-pattern p-t-120 p-b-105">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 p-b-30">
					<div class="wrap-text-welcome t-center">
		<h5 class="tit3 text-center">Seleccione el motivo</h5><br><br>
<form action="cancelacionDeClases" method="GET">
	<input name="idAgenda" value="${idAgenda}" style="display:none">
		<select name="idEstadoAgenda">
			<c:forEach items="${estadosDeAgenda}" var="la">
				<option value="${la.id}"> ${la.estado} </option>
			</c:forEach>
		</select>
</form><br><br>

<form action="claseCancelada" method="GET">
	<button class="btn btn-primary" type="submit" name="aceptar">Aceptar</button>
</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<!-- Footer -->
<%@ include file="../../parts/footer.jsp" %> 
	<!-- fin footer  -->
</body>
</html>