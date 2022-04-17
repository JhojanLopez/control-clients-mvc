<%-- 
    Document   : botonesNavegacionEditar
    Created on : 16/04/2022, 1:25:57 p. m.
    Author     : JhojanDS
--%>
<section id="actions" class="py-4 mb-2 bg-light">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <a href="index.jsp" class="btn btn-light btn-block" 
                   >
                    <i class="fa-solid fa-circle-arrow-left"></i> Regresar a inicio
                </a>
            </div>

            <div class="col-md-4">

                <button type="submit" class="btn btn-success btn-block">
                    <i class="fa-solid fa-floppy-disk"></i> Guardar

                </button>

            </div>

            <div class="col-md-4">
             
                <a href="#" class="btn btn-danger btn-block" 
                   data-bs-toggle="modal"
                   data-bs-target="#eliminarClienteModal"
                   >
                    <i class="fa-solid fa-trash"></i> Eliminar
                </a>
                <!-- incluyo el modal de eliminar cliente -->
                <jsp:include page="/WEB-INF/paginas/cliente/eliminarCliente.jsp"/> 
            </div>
        </div>
    </div>
</section>

