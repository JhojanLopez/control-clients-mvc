/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package persistencia;

import java.util.List;
import modelo.Clientes;

/**
 *
 * @author JhojanDS
 */
public interface ClienteDao {

    public List<Clientes> findAllPersonas();

    public Clientes findPersonaById(Clientes clientes);

    public void insertPersona(Clientes cliente);

    public void updatePersona(Clientes cliente);

    public void deletePersona(Clientes cliente);
}
