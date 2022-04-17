package persistencia;

import java.util.List;
import javax.ejb.Local;
import modelo.Clientes;

@Local
public interface ClienteService {

    public List<Clientes> listarclientes();

    public Clientes encontrarClientePorId(Clientes clientes);

    public void registrarCliente(Clientes clientes);

    public void modificarCliente(Clientes clientes);

    public void eliminarCliente(Clientes clientes);

}
