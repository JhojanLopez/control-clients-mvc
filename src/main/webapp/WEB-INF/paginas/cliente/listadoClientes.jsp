<%-- 
    Document   : listadoClientes
    Created on : 15/04/2022, 1:03:17 p. m.
    Author     : JhojanDS
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="es_CO" />
<section id="clientes">
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <div class="card">
                    <div class="card-header">
                        <h2 class="text-center py-2">Listado de clientes</h2>

                    </div>
                </div>

                <table class="table table-light table-hover">
                    <thead class="table-dark">
                        <tr>
                            <th>#</th>
                            <th>Nombre</th>
                            <th>Saldo</th>
                            <th></th>

                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="listaClientes" items="${clientes}">

                            <tr>
                                <td>${listaClientes.idCliente}</td>
                                <td>${listaClientes.nombre} ${listaClientes.apellido}</td>
                                <td><fmt:formatNumber value="${listaClientes.saldo}" type="currency"/></td>
                                <td><a href="${pageContext.request.contextPath}/ServletControlador?accion=editar&idCliente=${listaClientes.idCliente}" 
                                       class="btn btn-primary"> <i class="fa-solid fa-user-pen"></i>  Editar  </a></td>

                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <!-- tarjetas: saldo total -->                    
            <div class="col-md-3">
                <!-- saldo total -->
                <div class="card text-center bg-danger text-white mb-4">
                    <div class="card-body">
                        <h3>Saldo Total</h3>
                        <h4 class="display-4">
                            <fmt:formatNumber value="${saldoTotal}" type="currency"/>
                        </h4>
                    </div>
                </div>

                <!-- numero de clientes --> 
                <div class="card text-center bg-success text-white mb-4">
                    <div class="card-body">
                        <h3>Total Clientes</h3>
                        <h4 class="display-4">
                            <i class="fa-solid fa-user"></i> ${totalClientes}
                        </h4>
                    </div>
                </div>


            </div>

        </div>
    </div>
</section>

<!-- agg el modal para agregar clientes -->
 <jsp:include page="/WEB-INF/paginas/cliente/agregarCliente.jsp"/>





