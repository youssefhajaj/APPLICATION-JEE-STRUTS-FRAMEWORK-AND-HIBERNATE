package controller;

import dao.Personne;
import java.time.LocalDate; // Import LocalDate from java.time
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.form;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Session;
import org.hibernate.cfg.Configuration;

public class add_new_personne extends org.apache.struts.action.Action {

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        form frm = (form) form;
        String[] dateNaissance = frm.getDateNaissance().split("/");

        // Construct LocalDate object with year, month, and day
        LocalDate date = LocalDate.of(Integer.parseInt(dateNaissance[2]),
                                       Integer.parseInt(dateNaissance[1]),
                                       Integer.parseInt(dateNaissance[0]));

        Personne personne = new Personne();
        personne.setName(frm.getName());
        personne.setAge(Integer.parseInt(frm.getAge()));
        personne.setVille(frm.getVille());
        personne.setDateNaissance(java.sql.Date.valueOf(date)); // Convert LocalDate to java.sql.Date
        
        Session connexion = new Configuration().configure().buildSessionFactory().openSession();
        connexion.beginTransaction();
        connexion.save(personne);
        connexion.getTransaction().commit();
        connexion.close();

        return mapping.findForward("resultat");
    }
}
