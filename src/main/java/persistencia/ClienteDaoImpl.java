/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import modelo.Clientes;

/**
 *
 * @author JHOJANDS
 */
public class ClienteDaoImpl implements ClienteDao {

    @PersistenceContext(unitName = "ControlClientesPU")
    EntityManager em;

    @Override
    public List<Clientes> findAllPersonas() {
        return em.createNamedQuery("Clientes.findAll").getResultList();
    }

    @Override
    public Clientes findPersonaById(Clientes clientes) {
        return em.find(Clientes.class, clientes.getIdCliente());
    }

    @Override
    public void insertPersona(Clientes cliente) {
        em.persist(cliente);
    }

    @Override
    public void updatePersona(Clientes cliente) {

        em.merge(cliente);
    }

    @Override
    public void deletePersona(Clientes cliente) {
        em.remove(em.merge(cliente));

    }

}
