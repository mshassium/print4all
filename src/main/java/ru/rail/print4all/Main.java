package ru.rail.print4all;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import ru.rail.print4all.db.DBConnectionHelper;

import java.sql.*;

public class Main extends HttpServlet {

  private DBConnectionHelper helper = new DBConnectionHelper();

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException {

    if (req.getRequestURI().endsWith("/ru/rail/print4all/db")) {
      showDatabase(req,resp);
    } else {
      showHome(req,resp);
    }
  }

  private void showHome(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException {
    resp.getWriter().print("Hello from Java!");
  }

  private void showDatabase(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException {
    Connection connection = null;
    try {
      connection = helper.getConnection();

      Statement stmt = connection.createStatement();
      stmt.executeUpdate("CREATE TABLE IF NOT EXISTS ticks (tick timestamp)");
      stmt.executeUpdate("INSERT INTO ticks VALUES (now())");
      ResultSet rs = stmt.executeQuery("SELECT tick FROM ticks");

      String out = "Hello!\n";
      while (rs.next()) {
          out += "Read from DB: " + rs.getTimestamp("tick") + "\n";
      }

      resp.getWriter().print(out);
    } catch (Exception e) {
      resp.getWriter().print("There was an error: " + e.getMessage());
    } finally {
      if (connection != null) try{connection.close();} catch(SQLException e){}
    }
  }

//  public static void main(String[] args) throws Exception {
//    Server server = new Server(Integer.valueOf(System.getenv("PORT")));
//    ServletContextHandler context = new ServletContextHandler(ServletContextHandler.SESSIONS);
//    context.setContextPath("/");
//    server.setHandler(context);
//    context.addServlet(new ServletHolder(new Main()),"/*");
//    server.start();
//    server.join();
//  }
}
