<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- meta, css, vendor, etc. -->
<%@ include file="../../parts/meta.jsp" %> 
	<!-- fin del meta, css, vendor, etc -->
	<!-- Header -->
<%@ include file="../../parts/header.jsp" %> 
	<!-- fin header -->
	<!-- Sidebar -->
<%@ include file="../../parts/sidebar.jsp" %> 
	<!-- fin sidebar -->
</head>
<body class="animsition">

	


	<!-- Our Story -->
	<section class="bg1-pattern p-t-120 p-b-105">
		
		
<c:if test="${num == 0 }">		
		
		<div class="container">
		<div class="tit2 text-center m-t-80">
			 No estas realizando ningun curso en este momento
		</div>
<a href="listadoCursos" class="btn3 flex-c-m size13 text-center txt11 trans-0-4 m-l-r-auto m-t-20">
					Anotarme a un curso
				</a>
	<!--	<h3 class="tit3 t-center m-b-35 m-t-5">
			Seccion Principal
		</h3>
-->
		
					<p class="t-center m-b-22 size3 m-l-r-auto m-b-70 m-t-15">
					�Que est�s esperando? Anotate y aprend� a manejar junto a nuestros instructores.
						</p>
		
		
		
</c:if>
			
			
			
			
			
<c:if test="${num != 0 }">			
			
			
			
			<!-- Delicious -->
			<div class="row">
				<div class="col-md-12 p-t-45 p-b-30 ">
					<div class="wrap-text-welcome t-center">
						
	












						<h3 class="tit3 text-center m-b-35 m-t-5">
							Historial de Clases 
						</h3>
		
		
			
	<form:form action="mostrarclasesCurso" moddelAtribute="curso" method="post">
	<p class="text-center">Solo ver mis clases de: </p>	
	<c:forEach items="${listaCursos}" var="la">

		
<label class="checkbox-inline">

  <input type="radio"  class="m-l-15" name="id" value="${la.id}"/> ${la.tipo}
  </label>
</c:forEach>	
	
		<button type="submit" class="btn3 flex-c-m txt11 trans-0-4 m-l-r-auto btn-sm m-b-20">
          <span class="glyphicon glyphicon-pencil"> </span> Buscar 
        </button class="m-b-40">
</form:form>		
		
		<h4 class="t-center text-danger">${error}</h4>
		
<div class="row">
<c:forEach items="${listadoDeClases}" var="la">


<div class="col-md-4 ">



		          <h2 class="text-center color0-hov trans-0-4 bg-primary text-white">Curso de ${la.inscripcion.curso.especialidad.tipo}</h2>
		
		 <p class="card-text text-center"><b class="color0-hov trans-0-4">Fecha</b>: ${la.fecha}<br>
	<c:if test="${la.hora < 1000 }">
	
	<b class="color0-hov trans-0-4 text-center">Hora:</b> ${la.hora.toString().substring(0,1)}:${la.hora.toString().substring(1,3)}<br>
	
	</c:if>
   
   <c:if test="${la.hora >= 1000 }">
  		
  		 <b class="color0-hov trans-0-4 text-center">Hora:</b> ${la.hora.toString().substring(0,2)}:${la.hora.toString().substring(2,3)}${la.hora.toString().substring(2,3)}<br><br>
	
	</c:if>	
		<b class="color0-hov trans-0-4 text-center">Instructor:</b> ${la.instructorVehiculoEspecialidad.instructor.usuario.nombre} ${la.instructorVehiculoEspecialidad.instructor.usuario.apellido}<br>
		
		<b class="color0-hov trans-0-4 text-center">Vehiculo:</b> ${la.instructorVehiculoEspecialidad.vehiculo.modelo} ${la.instructorVehiculoEspecialidad.vehiculo.patente}</p>
		
		<c:if test="${la.estadoDeAgenda.estado == 'Ocupada' }">
		<b class="color0-hov trans-0-4 text-center text-primary">Estado de la clase:</b> A�n no curs�</p>
		</c:if>
		
		<c:if test="${la.estadoDeAgenda.estado == 'Finalizado' }">
		<b class="color0-hov trans-0-4 text-center text-success">Estado de la clase:</b> Clase realizada</p>
		</c:if>
		<c:if test="${(la.estadoDeAgenda.estado != 'Finalizado') && (la.estadoDeAgenda.estado != 'Ocupada') }">
		<b class="color0-hov trans-0-4 text-center text-danger">Estado de la clase:</b> ${la.estadoDeAgenda.estado}</p>
		</c:if>
		
		
		
		</div>
		
		</c:forEach>
</c:if>						
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