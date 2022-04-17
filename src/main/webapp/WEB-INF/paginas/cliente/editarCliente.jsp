<%-- 
    Document   : editarCliente
    Created on : 15/04/2022, 1:26:44 p. m.
    Author     : JhojanDS
--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
              crossorigin="anonymous">

        <!-- fontAwesome -->
        <script src="https://kit.fontawesome.com/53305f8af1.js" crossorigin="anonymous"></script>

        <title>Control clientes</title>
    </head>
    <body>

        <!-- cabecero -->
        <jsp:include page="/WEB-INF/paginas/comunes/cabecero.jsp"/>

        <form action="${pageContext.request.contextPath}/ServletControlador?accion=modificar&idCliente=${cliente.idCliente}" 
              method="POST" class="was-validated">

            <!-- botones de navegacion editar -->
            <jsp:include page="/WEB-INF/paginas/comunes/botonesNavegacionEditar.jsp"/>

            <section id="detalles">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <h2 class="text-center py-2">Editar clientes</h2>
                                </div>

                                <div class="card-body">
                                    <div class="form-group">
                                        <label for="nombre">Nombre</label>
                                        <input type="text" class="form-control" name="nombre" required="true" value="${cliente.nombre}">
                                    </div>
                                    <div class="form-group">
                                        <label for="apellido">Apellido</label>
                                        <input type="text" class="form-control" name="apellido" required="true" value="${cliente.apellido}">
                                    </div>
                                    <div class="form-group">
                                        <label for="email">Email</label>
                                        <input type="email" class="form-control" name="email" required="true" value="${cliente.email}">
                                    </div>
                                    <div class="form-group">
                                        <label for="telefono">Telofono</label>
                                        <input type="tel" class="form-control" name="telefono" required="true" value="${cliente.telefono}">
                                    </div>
                                    <div class="form-group">
                                        <label for="saldo">Saldo</label>
                                        <input type="number" class="form-control" name="saldo" required="true" step="any" value="${cliente.saldo}">
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>


        </form>    

        <!-- pie de pagina -->
        <jsp:include page="/WEB-INF/paginas/comunes/piePagina.jsp"/>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" 
        crossorigin="anonymous"></script>

    </body>
</html>
