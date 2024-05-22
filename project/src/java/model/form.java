package model;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

public class form extends org.apache.struts.action.ActionForm {

    private String name;
    private String age;
    private String ville;
    private String dateNaissance;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getVille() {
        return ville;
    }

    public void setVille(String ville) {
        this.ville = ville;
    }

    public String getDateNaissance() {
        return dateNaissance;
    }

    public void setDateNaissance(String dateNaissance) {
        this.dateNaissance = dateNaissance;
    }

    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();

        //validation du l'attribut nomprenom  : régle de validatuion --->non vide
        if (name == null || name.trim().length() == 0) {
            errors.add("nomvide", new ActionMessage("nom_required"));
        }
        //validation du l'attribut ville  : régle de validatuion --->non vide
        if (ville == null || ville.trim().length() == 0) {
            errors.add("villevide", new ActionMessage("ville_required"));
        }
        //validation du l'attribut date_n  : régle de validatuion --->non vide
        if (dateNaissance == null || dateNaissance.trim().length() == 0) {
            errors.add("datenaissancevide", new ActionMessage("datenaissance_required"));
        } else //validation du l'attribut date_n  : régle de validatuion --->valide
        if (!dateNaissance.matches("[0-9]{1,2}/[0-9]{1,2}/[0-9]{4}")) {
            errors.add("datenaissanceinvalide", new ActionMessage("datenaissance_error"));
        }
        //validation du l'attribut date_d  : régle de validatuion --->non vide
        if (age == null || age.trim().length() == 0) {
            errors.add("agevide", new ActionMessage("age_required"));
        } 
         else if (Integer.parseInt(age) > 100 || Integer.parseInt(age) < 1) {
            errors.add("ageinvalide", new ActionMessage("age_error"));
        }

        return errors;
    }
}
