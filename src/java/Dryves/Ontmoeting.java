package Dryves;
// Generated 26-mrt-2013 21:03:05 by Hibernate Tools 3.2.1.GA


import java.util.Date;

/**
 * Ontmoeting generated by hbm2java
 */
public class Ontmoeting  implements java.io.Serializable {


     private int ontmoetingnr;
     private int aankoopnr;
     private String locatie;
     private Date tijd;

    public Ontmoeting() {
    }

    public Ontmoeting(int ontmoetingnr, int aankoopnr, String locatie, Date tijd) {
       this.ontmoetingnr = ontmoetingnr;
       this.aankoopnr = aankoopnr;
       this.locatie = locatie;
       this.tijd = tijd;
    }
   
    public int getOntmoetingnr() {
        return this.ontmoetingnr;
    }
    
    public void setOntmoetingnr(int ontmoetingnr) {
        this.ontmoetingnr = ontmoetingnr;
    }
    public int getAankoopnr() {
        return this.aankoopnr;
    }
    
    public void setAankoopnr(int aankoopnr) {
        this.aankoopnr = aankoopnr;
    }
    public String getLocatie() {
        return this.locatie;
    }
    
    public void setLocatie(String locatie) {
        this.locatie = locatie;
    }
    public Date getTijd() {
        return this.tijd;
    }
    
    public void setTijd(Date tijd) {
        this.tijd = tijd;
    }




}


