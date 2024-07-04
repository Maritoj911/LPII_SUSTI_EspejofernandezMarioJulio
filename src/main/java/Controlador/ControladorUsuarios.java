package Controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.TblUsuarioImp;
import model.TblUsuariosusti;

/**
 * Servlet implementation class ControladorUsuarios
 */
public class ControladorUsuarios extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private final TblUsuarioImp usuarioDao = new TblUsuarioImp();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControladorUsuarios() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/ListadoProductos.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String usuario = request.getParameter("usuariosusti");
        String password = request.getParameter("passwordsusti");
       TblUsuariosusti nuevoUsuario = new TblUsuariosusti();
       nuevoUsuario.setUsuariosusti(usuario);
       nuevoUsuario.setPasswordsusti(password);
       
       usuarioDao.RegistrarUsuario(nuevoUsuario);
     
        response.sendRedirect("ListadoProductos.jsp");
        
	}
}
