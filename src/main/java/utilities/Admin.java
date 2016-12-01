package utilities;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class Admin
 */


public class Admin implements Filter {

    /**
     * Default constructor. 
     */
    public Admin() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
				HttpServletRequest request = (HttpServletRequest) req;
		        HttpServletResponse response = (HttpServletResponse) res;

		        /* Récupération de la session depuis la requête */
		        HttpSession session = request.getSession();
		        String privilege=(String) session.getAttribute("privilege");
		        
		       
		        if(privilege.equals("no")  || privilege==null || privilege.isEmpty()){
		        	request.setAttribute("alert", "vous devez s'authentifier autant qu'un web master pour y acceder!!!!");
		        	request.getRequestDispatcher("/WEB-INF/views/homepage.jsp").forward(request, response);
		        }
		        else

				// pass the request along the filter chain
				chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
