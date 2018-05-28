/*
 * $Header$
 * $Revision$
 * $Date$
 */
package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 概略
 * <p>概要・説明</p>
 *
 * @author oasm-shweyamininzali
 * @version $Revision$ $Date$
 */
@WebServlet(name = "welcome", urlPatterns = "/")
public class Welcome extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext sc = getServletContext();
        RequestDispatcher rd =  sc.getRequestDispatcher("/WEB-INF/jsp/index.jsp");
        rd.forward(req, resp);
    }

}
