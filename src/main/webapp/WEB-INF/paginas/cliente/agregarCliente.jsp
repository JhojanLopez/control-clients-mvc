<%-- 
    Document   : agregarCliente
    Created on : 15/04/2022, 1:27:53 p. m.
    Author     : JhojanDS
--%>
<div class="modal fade" id="agregarClienteModal" tabindex="-1" aria-labelledby="agregarClienteModal" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-info text-white">
                <h5 class="modal-title">Agregar cliente</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>

            <form action="${pageContext.request.contextPath}/ServletControlador?accion=insertar" 
                  method="POST" class="was-validated">

                <div class="modal-body">
                    <div class="form-group">
                        <label for="nombre">Nombre</label>
                        <input type="text" class="form-control" name="nombre" required="true">
                    </div>
                    <div class="form-group">
                        <label for="apellido">Apellido</label>
                        <input type="text" class="form-control" name="apellido" required="true">
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" class="form-control" name="email" required="true">
                    </div>
                    <div class="form-group">
                        <label for="telefono">Telofono</label>
                        <input type="tel" class="form-control" name="telefono" required="true">
                    </div>
                    <div class="form-group">
                        <label for="saldo">Saldo</label>
                        <input type="number" class="form-control" name="saldo" required="true" step="any">
                    </div>

                </div>
                
                <div class="modal-footer">
                    <button class="btn btn-primary" type="submit">Guardar</button>
                </div>
            </form>
        </div>
    </div>
</div>