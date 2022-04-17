<%-- 
    Document   : clientes
    Created on : 15/04/2022, 1:18:53 p. m.
    Author     : JhojanDS
--%>
<%-- 
    Document   : clientes
    Created on : 14/04/2022, 1:53:30 p. m.
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

        <!-- boton de agregar clientes -->
        <jsp:include page="/WEB-INF/paginas/comunes/botonesNavegacion.jsp"/>
        
        <!-- listado de clientes -->
        <jsp:include page="/WEB-INF/paginas/cliente/listadoClientes.jsp"/>

        <!-- pie de pagina -->
        <jsp:include page="/WEB-INF/paginas/comunes/piePagina.jsp"/>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" 
        crossorigin="anonymous"></script>

    </body>
</html>