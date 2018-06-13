<%-- 
    Document   : combo
    Created on : 6 avr. 2018, 14:46:38
    Author     : mattar
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@tag import="Beans.*, java.util.*" %>
<%@tag import="Convert.*, java.util.*" %>


<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="parametre"%>
<%@attribute name="valeur"%>

<%-- any content can be specified here e.g.: --%>



<%    
            Map conversionTable = Convertisseur.getConversionTable();
            %>
            
            
            <select name= ${parametre}>
           <option></option>
            <%for (int i = 0; i < conversionTable.size(); i++) {%>
            <option<%
                    if (valeur.equals(conversionTable.keySet().toArray()[i]))
                    {%>
                        selected<%}%>> <%=  conversionTable.keySet().toArray()[i] %> </option> <%
            }%>
             </select>