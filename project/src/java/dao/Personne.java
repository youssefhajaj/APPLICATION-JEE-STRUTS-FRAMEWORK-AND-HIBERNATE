package dao;
// Generated May 22, 2024 5:37:18 PM by Hibernate Tools 4.3.1


import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="personne"
    ,catalog="jee"
)
public class Personne  implements java.io.Serializable {


     private Integer id;
     private String name;
     private int age;
     private String ville;
     private Date dateNaissance;

    public Personne() {
    }

    public Personne(String name, int age, String ville, Date dateNaissance) {
       this.name = name;
       this.age = age;
       this.ville = ville;
       this.dateNaissance = dateNaissance;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="id", unique=true, nullable=false)
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    
    @Column(name="name", nullable=false, length=45)
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    
    @Column(name="age", nullable=false)
    public int getAge() {
        return this.age;
    }
    
    public void setAge(int age) {
        this.age = age;
    }

    
    @Column(name="ville", nullable=false, length=45)
    public String getVille() {
        return this.ville;
    }
    
    public void setVille(String ville) {
        this.ville = ville;
    }

    @Temporal(TemporalType.DATE)
    @Column(name="dateNaissance", nullable=false, length=10)
    public Date getDateNaissance() {
        return this.dateNaissance;
    }
    
    public void setDateNaissance(Date dateNaissance) {
        this.dateNaissance = dateNaissance;
    }




}


