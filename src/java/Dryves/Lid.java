package Dryves;
// Generated 26-mrt-2013 21:03:05 by Hibernate Tools 3.2.1.GA

import java.util.Hashtable;




/**
 * Lid generated by hbm2java
 */
public class Lid  implements java.io.Serializable {


     private int lidnr;
     private String vnaam;
     private String anaam;
     private char geslacht;
     private String adres;
     private String huisnummer;
     private String postcode;
     private String stad;
     private String telnr;
     private String reknr;
     private String email;
     private String wachtwoord;
     private String wachtwoord2;
     private int beoordeling;
     private String fotoUrl;
     private String tvoegsel;
     private String notify;
     private Hashtable errors;

    public Lid() {
    }

	
    public Lid(int lidnr, String vnaam, String anaam, char geslacht, String adres, String huisnummer, String reknr, String postcode, String stad, String email, String wachtwoord, String wachtwoord2, int beoordeling, String fotoUrl, String tvoegsel) {
        this.lidnr = lidnr;
        this.vnaam = vnaam;
        this.anaam = anaam;
        this.geslacht = geslacht;
        this.adres = adres;
        this.huisnummer = huisnummer;
        this.reknr = reknr;
        this.postcode = postcode;    
        this.stad = stad;
        this.email = email;
        this.wachtwoord = wachtwoord;
        this.wachtwoord2 = wachtwoord2;
        this.beoordeling = beoordeling;
        this.fotoUrl = fotoUrl;
        this.tvoegsel = tvoegsel;
    }
    public Lid(int lidnr, String vnaam, String anaam, char geslacht, String adres, String huisnummer, String postcode, String stad, String telnr, String reknr, String email, String wachtwoord, String wachtwoord2, int beoordeling, String fotoUrl, String tvoegsel) {
       this.lidnr = lidnr;
       this.vnaam = vnaam;
       this.anaam = anaam;
       this.geslacht = geslacht;
       this.adres = adres;
       this.huisnummer = huisnummer;
       this.postcode = postcode;
       this.stad = stad;
       this.telnr = telnr;
       this.reknr = reknr;
       this.email = email;
       this.wachtwoord = wachtwoord;
       this.beoordeling = beoordeling;
       this.fotoUrl = fotoUrl;
       this.tvoegsel = tvoegsel;
    }
    
    public boolean validate() {
        boolean bool = true;
        if (vnaam.equals("")) {
            errors.put("voornaam", "Typ hier uw voornaam");
            vnaam = "";
            bool = false;
        }
        if (anaam.equals("")) {
            errors.put("achternaam", "Typ hier uw achternaam");
            anaam = "";
            bool = false;
                    }
        if (tvoegsel.equals("")) {
            errors.put("tussenvoegsel", "Typ hier uw tussenvoegsel");
            tvoegsel = "";
            bool = false;
        }
                
        if (reknr.equals("") || reknr.length() != 6) {
            errors.put("billingnumber", "Typ een geldige rekening nummer");
            reknr = "";
            bool = false;
        } else {
            try {
                int x = Integer.parseInt(reknr);
            } catch (NumberFormatException e) {
                errors.put("billingnumber", "Typ een geldige rekening nummer");
                reknr = "";
                bool = false;
            }
        }
        
        if (email.equals("") || (email.indexOf('@') == -1)) {
            errors.put("email", "Typ een geldig e-mail adres");
            email = "";
            bool = false;
        }
        if (wachtwoord.equals("")) {
            errors.put("password1", "Typ een geldig paswoord");
            wachtwoord = "";
            bool = false;
        }
        if (!wachtwoord2.equals("") && (wachtwoord2.equals("")
                || !wachtwoord.equals(wachtwoord2))) {
            errors.put("wachtwoord2", "Bevestig uw wachtwoord");
            wachtwoord2 = "";
            bool = false;
        }
        if (adres.equals("")) {
            errors.put("straat", "Typ hier uw straatnaam");
            adres = "";
            bool = false;
        }
              
        if (huisnummer.equals("")) {
            errors.put("huisnummer", "Typ hier uw huisnummer");
            huisnummer = "";
            bool = false;
            
        }
        if (stad.equals("")) {
            errors.put("stad", "Typ hier de naam van uw woonplaats");
            stad = "";
            bool = false;
        }
        if (postcode.equals("") || postcode.length() != 6) {
            errors.put("postcode", "Typ een geldige postcode");
            postcode = "";
            bool = false;
        } else {
            try {
                int x = Integer.parseInt(postcode);
            } catch (NumberFormatException e) {
                errors.put("zip", "Typ een geldige postcode");
                postcode = "";
                bool = false;
            }
        }
        return bool;
        }

        
    public String getErrorMsg(String s) {
        String errorMsg = (String) errors.get(s.trim());
        return (errorMsg == null) ? "" : errorMsg;
    }
         
    public String isRbSelected(String s) {
        return (notify.equals(s)) ? "checked" : "";   
    }
    public int getLidnr() {
        return this.lidnr;
    }
    
    public void setLidnr(int lidnr) {
        this.lidnr = lidnr;
    }
    public String getVnaam() {
        return this.vnaam;
    }
    
    public void setVnaam(String vnaam) {
        this.vnaam = vnaam;
    }
    public String getAnaam() {
        return this.anaam;
    }
    
    public void setAnaam(String anaam) {
        this.anaam = anaam;
    }
    public char getGeslacht() {
        return this.geslacht;
    }
    
    public void setGeslacht(char geslacht) {
        this.geslacht = geslacht;
    }
    public String getAdres() {
        return this.adres;
    }
    
    public void setAdres(String adres) {
        this.adres = adres;
    }
    public String getHuisnummer() {
        return this.huisnummer;
            }
    public void setHuisnummer(String huisnummer) {
        this.huisnummer = huisnummer;
    }
    public String getPostcode() {
        return this.postcode;
    }
    
    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }
    public String getStad() {
        return this.stad;
    }
    
    public void setStad(String stad) {
        this.stad = stad;
    }
    public String getTelnr() {
        return this.telnr;
    }
    
    public void setTelnr(String telnr) {
        this.telnr = telnr;
    }
    public String getReknr() {
        return this.reknr;
    }
    
    public void setReknr(String reknr) {
        this.reknr = reknr;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }

    public String getWachtwoord() {
        return wachtwoord;
    }

    public void setWachtwoord(String wachtwoord) {
        this.wachtwoord = wachtwoord;
    }
        public String getWachtwoord2() {
        return wachtwoord2;
    }

    public void setWachtwoord2(String wachtwoord) {
        this.wachtwoord2 = wachtwoord;
    }
    public int getBeoordeling() {
        return this.beoordeling;
    }
    
    public void setBeoordeling(int beoordeling) {
        this.beoordeling = beoordeling;
    }
    public String getFotoUrl() {
        return this.fotoUrl;
    }
    
    public void setFotoUrl(String fotoUrl) {
        this.fotoUrl = fotoUrl;
    }
    public String getTvoegsel() {
        return this.tvoegsel;
    }
    
    public void setTvoegsel(String tvoegsel) {
        this.tvoegsel = tvoegsel;
    }

    public String getNotify() {
        return notify;
    }

    public void setNotify(String n) {
        notify = n;
    }
    
    public void setErrors(String key, String msg) {
        errors.put(key, msg);
        

}

}
