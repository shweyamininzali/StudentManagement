/*
 * $Header$
 * $Revision$
 * $Date$
 */
package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Util.DaoUtil;
import Util.DatabaseException;

/**
 * 概略
 * <p>概要・説明</p>
 *
 * @author oasm-shweyamininzali
 * @version $Revision$ $Date$
 */
@WebServlet(name = "studentsRegister", urlPatterns = {"/studentsRegister.do"})
public class StudentsRegister extends HttpServlet {


    private static final String URL = "jdbc:h2:tcp://localhost/~/studentsAdmin";
    private static final String SQL = "SELECT * FROM students";


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext sc = getServletContext();
        RequestDispatcher rd = sc.getRequestDispatcher("/WEB-INF/jsp/Register.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String sname = req.getParameter("sname");
        String address = req.getParameter("address");
        int phoneNo = Integer.parseInt(req.getParameter("phoneNo"));
        String email = req.getParameter("email");
        String dob = req.getParameter("dob");
        String gender = req.getParameter("gender");
        String fatherName = req.getParameter("fatherName");
        String nrc = req.getParameter("nrc");
        String year = "First Year";
        String major = "none";

        try {
            Class.forName("org.h2.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            throw new DatabaseException(e.getMessage());
        }
        try (Connection conn = DaoUtil.INSTANCE.getDBConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(SQL);) {
//              while (rs.next()) {
//                  results.add(new LinkedHashMap<String, String>() {
//                      {
//                          put("商品コード", rs.getString(1));
//                          put("商品名", rs.getString(2));
//                          put("商品区分", rs.getString(3));
//                          put("単価", rs.getString(4));
//                          put("更新日", rs.getString(5));
//                      }
//                  });
//              }
          } catch (SQLException e) {
              e.printStackTrace();
              throw new DatabaseException(e.getMessage());
          }


    }

}
