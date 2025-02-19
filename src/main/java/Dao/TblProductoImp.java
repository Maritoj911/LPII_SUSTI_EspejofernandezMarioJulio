package Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import Interfaces.IProducto;

import model.TblProductosusti;

public class TblProductoImp implements IProducto{

	
	@Override
	public void RegistrarProducto(TblProductosusti producto) {
		// TODO Auto-generated method stub
		

		EntityManagerFactory em = Persistence.createEntityManagerFactory("LPII_SUSTI_EspejofernandezMarioJulio");
		EntityManager emanager = em.createEntityManager();
		emanager.getTransaction().begin();
		emanager.persist(producto);
		
		System.out.print("El producto se registro en la Base de datos");
		emanager.getTransaction().commit();
		
		emanager.close();
	}

	@Override
	public void ActualizarProducto(TblProductosusti producto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void EliminarProducto(TblProductosusti producto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public TblProductosusti BuscarProducto(TblProductosusti producto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<TblProductosusti> ListarProducto() {
		
		EntityManagerFactory em = Persistence.createEntityManagerFactory("LPII_SUSTI_EspejofernandezMarioJulio");
        EntityManager emanager = em.createEntityManager();
        emanager.getTransaction().begin();
        
        List<TblProductosusti> listaProducto = emanager.createQuery("select c from TblProductosusti c", TblProductosusti.class).getResultList();
        emanager.getTransaction().commit();
        
        emanager.close();
        
        return listaProducto;
	}

}
