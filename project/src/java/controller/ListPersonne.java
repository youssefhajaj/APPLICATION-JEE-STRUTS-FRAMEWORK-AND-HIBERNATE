package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Personne;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class ListPersonne extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Personne.class).buildSessionFactory();
        Session session = factory.openSession();

        try {
            // Begin transaction
            session.beginTransaction();
            
            // Retrieve list of Personne
            Query query = session.createQuery("from Personne");
            List<Personne> personneList = query.list();
            
            // Commit transaction
            session.getTransaction().commit();

            // Set the list in the request scope
            request.setAttribute("personneList", personneList);

            // Forward to the JSP page
            request.getRequestDispatcher("list_personne.jsp").forward(request, response);

        } finally {
            session.close();
            factory.close();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
