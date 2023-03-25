package felicidades.princesa;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Calendar;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class felicidades
 */
public class envioTexto extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public envioTexto() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		BufferedOutputStream bos=null;
		String text="";
		try {
			if(request.getParameter("textoEnviado")!=null && !"".equals(request.getParameter("textoEnviado").trim())){
				Calendar instance = Calendar.getInstance();
				String fecha=String.valueOf(instance.getTimeInMillis());
				bos =new BufferedOutputStream(new FileOutputStream("c:\\FTP\\mensajes\\"+fecha));
				bos.write(request.getParameter("textoEnviado").getBytes());
				bos.flush();
				bos.close();
				text="ok";
			}else {
				text="vac";
			}
		}catch(Exception e) {
			
		}finally {
			if(bos!=null) {
				bos.flush();
				bos.close();
			}
		}
		//RequestDispatcher requestDispatcher = request.getRequestDispatcher("jsp/formulario.jsp");
		//requestDispatcher.forward(request, response);
		response.sendRedirect("jsp/formulario.jsp?respuesta="+text);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
