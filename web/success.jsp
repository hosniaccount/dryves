<jsp:useBean id="formHandler" class="test.FormBean" scope="request"/>
<html>
    <body>
    <center>
        <table cellpadding=1 cellspacing=1 border="1" >
            <th bgcolor="lightblue" colspan=2>
                <font size=5>Registratie is voltooid!</font>
            </th>
            <font size=4>
            <tr bgcolor="lightblue">
                <td valign=top> 
                    <b>Voornaam</b> 
                    <br>
                    <jsp:getProperty name="formHandler" property="Voornaam"/>
                </td>
                <td valign=top>
                    <b>Achternaam</b>
                    <br>
                    <jsp:getProperty name="formHandler" property="Achternaam"/>
                </td>
            </tr>
            <tr bgcolor="lightblue">
                <td valign=top>
                    <b>E-Mail</b> 
                    <br>
                    <jsp:getProperty name="formHandler" property="email"/>
                    <br></td>
                <td valign=top>
                    <b>Postcode</b> 
                    <br>
                    <jsp:getProperty name="formHandler" property="Postcode"/>
                </td>
            </tr>
            <tr bgcolor="lightblue">
                <td valign=top colspan=2>
                    <b>Gebruikersnaam</b>
                    <br>
                    <jsp:getProperty name="formHandler" property="Gebruikersnaam"/>
                </td>
            </tr>
            <tr bgcolor="lightblue">
                <td colspan=2 valign=top>
                    <b>In welke regio zal er veel gebruik worden gemaakt van de Dryves?</b>
                    <br>
                    <%
                      String[] faveTech = formHandler.getFaveTech();
                      if (!faveTech[0].equals("1")) {
                        out.println("<ul>");
                        for (int i=0; i<faveTech.length; i++)  
                          out.println("<li>"+faveTech[i]);
                        out.println("</ul>");
                      } else out.println("Er is niets geselecteerd");
                    %>
                </td>
            </tr>
            <tr bgcolor="lightblue">
                <td colspan=2 valign=top>
                    <b>WWil je op de hoogte gehouden worden van onze nieuwsbrief?</b>
                    <br>
                    <jsp:getProperty name="formHandler" property="notify"/>
                </td>
            </tr>
            </font>
        </table>
    </center>
</body>
</html>

