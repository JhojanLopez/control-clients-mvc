/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import java.io.IOException;
import static java.lang.System.out;
import java.util.List;
import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.Clientes;
import persistencia.*;

/**
 *
 * @author JhojanDS
 */
@WebServlet(name = "ServletControlador", urlPatterns = {"/ServletControlador"})
public class ServletControlador extends HttpServlet {

    @Inject
    ClienteService clienteService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");
        if (accion != null) {

            switch (accion) {

                case "editar":
                    this.editarCliente(request, response);
                    break;

                case "eliminar":
                    this.eliminarCliente(request, response);
                    break;

                default:
                    this.accionPredeterminada(request, response);
            }

        } else {

            this.accionPredeterminada(request, response);
        }

    }

    private void accionPredeterminada(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Clientes> listaClientes = clienteService.listarclientes();//recuperamos de la bd la lista de los clientes

        //establecemos la lista de clientes en el alcance de session
        HttpSession sesion = request.getSession();
        sesion.setAttribute("clientes", listaClientes);

        sesion.setAttribute("totalClientes", listaClientes.size());//establecemos  el total de clientes
        sesion.setAttribute("saldoTotal", saldoTotal(listaClientes));//establecemos el saldo total de clientes

        /*si usamos requestDispatcher la url que se genera no cambia de manera que cuando editemos o agreguemos
        un cliente al volver a realizar esta accion predeterminada(recargar los componentes de la tabla etc..) entonces la url de editar o agregar
        quedara en el navegador y cuando se refresque la pagina se duplicara la accion antes realizada(editar o agregar)
        request.getRequestDispatcher("clientes.jsp").forward(request, response);//desplegamos la informacion en la vista clientes
         */
        response.sendRedirect("clientes.jsp");//al usar response debemos usar las variables en el alcance
        // de session ya que en request no mostrara ningun parametro
    }

    private double saldoTotal(List<Clientes> listaClientes) {

        double total = 0;
        for (Clientes listaCliente : listaClientes) {
            total += listaCliente.getSaldo();
        }
        return total;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");
        if (accion != null) {

            switch (accion) {
                case "insertar":
                    this.insertarCliente(request, response);
                    break;

                case "modificar":
                    this.modificarCliente(request, response);
                    break;

                default:
                    this.accionPredeterminada(request, response);
            }

        } else {

            this.accionPredeterminada(request, response);
        }

    }

    private void insertarCliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String email = request.getParameter("email");
        String telefono = request.getParameter("telefono");
        double saldo = validarSaldo(request.getParameter("saldo"));

        Clientes cliente = new Clientes(nombre, apellido, email, telefono, saldo);//Creamos el obj 
        clienteService.registrarCliente(cliente);//registramos el cliente en la bd
        accionPredeterminada(request, response);//redireccionamos a la pag principal

    }

    private double validarSaldo(String stringSaldo) {
        double saldo = 0;
        if (stringSaldo != null && !stringSaldo.equals("")) {

            saldo = Double.parseDouble(stringSaldo);

        }

        return saldo;
    }

    private void editarCliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //rediccionara a la pag editarCliente donde mostrara los atributos del cliente seleccionado
        int idCliente = Integer.parseInt(request.getParameter("idCliente"));//recuperamos el valor de id cliente seleccionado
        Clientes cliente = new Clientes(idCliente);//guardo el id en un obj cliente con solo el id
        cliente = clienteService.encontrarClientePorId(cliente);//reescribo el obj al buscar los demas datos en la bd

        request.setAttribute("cliente", cliente);
        request.getRequestDispatcher("/WEB-INF/paginas/cliente/editarCliente.jsp").forward(request, response);//desplegamos la informacion en la vista Editarclientes

    }

    private void modificarCliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //recuperamos los parametros 
        int idCliente = Integer.parseInt(request.getParameter("idCliente"));
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String email = request.getParameter("email");
        String telefono = request.getParameter("telefono");
        double saldo = validarSaldo(request.getParameter("saldo"));

        Clientes cliente = new Clientes(idCliente, nombre, apellido, email, telefono, saldo);//Creamos el obj 
        clienteService.modificarCliente(cliente);//modificamos el cliente en la bd
        accionPredeterminada(request, response);
    }

    private void eliminarCliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //recuperamos el parametro 
        int idCliente = Integer.parseInt(request.getParameter("idCliente"));

        Clientes cliente = new Clientes(idCliente);//Creamos el obj 

        clienteService.eliminarCliente(cliente);//elimminamos el cliente de la bd
        
        accionPredeterminada(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
}
