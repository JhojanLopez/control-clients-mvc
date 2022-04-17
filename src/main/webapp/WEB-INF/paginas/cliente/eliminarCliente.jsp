<%-- 
    Document   : eliminarCliente
    Created on : 16/04/2022, 3:15:41 p. m.
    Author     : JhojanDS
--%>
<div class="modal fade" id="eliminarClienteModal" tabindex="-1" aria-labelledby="eliminarClienteModal" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-danger text-white">
                <h5 class="modal-title">Eliminar cliente</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p>¿Estas seguro de eliminar el cliente seleccionado?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                <a href="${pageContext.request.contextPath}/ServletControlador?accion=eliminar&idCliente=${cliente.idCliente}"
                   class="btn btn-danger btn-block" > Eliminar </a>
                <!--     <button type="button" class="btn btn-danger" >Eliminar</button>
             -->
            </div>
        </div>
    </div>
</div>
