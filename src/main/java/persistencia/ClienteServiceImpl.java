package persistencia;

import java.util.ArrayList;
import java.util.List;
import javax.ejb.Stateless;
import javax.inject.Inject;
import modelo.Clientes;

@Stateless
public class ClienteServiceImpl implements ClienteService {

    @Inject
    private ClienteDaoImpl clientesDao;

    @Override
    public List<Clientes> listarclientes() {
        return clientesDao.findAllPersonas();
    }

    @Override
    public Clientes encontrarClientePorId(Clientes clientes) {
        return clientesDao.findPersonaById(clientes);
    }

    @Override
    public void registrarCliente(Clientes clientes) {
        clientesDao.insertPersona(clientes);
    }

    @Override
    public void modificarCliente(Clientes clientes) {
        clientesDao.updatePersona(clientes);
    }

    @Override
    public void eliminarCliente(Clientes clientes) {
        clientesDao.deletePersona(clientes);

    }

}
