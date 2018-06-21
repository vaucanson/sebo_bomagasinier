/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

/**
 *
 * @author mattar
 */
public class SupplierOrderBean {
      
    
    public static void createLine(int id)
    {
        /* try {

		URL url = new URL("http://172.16.153.29:8080/sebo_backendnew/api/createResupplyOrderLine");
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setDoOutput(true);
		conn.setRequestMethod("POST");
		conn.setRequestProperty("Content-Type", "application/json");

		String input = "{\"qty\":100,\"name\":\"iPad 4\"}";

		OutputStream os = conn.getOutputStream();
		os.write(input.getBytes());
		os.flush();

		if (conn.getResponseCode() != HttpURLConnection.HTTP_CREATED) {
			throw new RuntimeException("Failed : HTTP error code : "
				+ conn.getResponseCode());
		}

		BufferedReader br = new BufferedReader(new InputStreamReader((conn.getInputStream())));

		String output;
		System.out.println("Output from Server .... \n");
		while ((output = br.readLine()) != null) {
			System.out.println(output);
		}

		conn.disconnect();

	  } catch (MalformedURLException e) {

		e.printStackTrace();

	  } catch (IOException e) {

		e.printStackTrace();

	 }*/
    }
    
    
  /*  public String getWaitingOrders(JspWriter out)
    {
         List<SupplierOrderLine> list = new ArrayList<SupplierOrderLine>();
           
           try
           {
            URL urlState = new URL("http://172.16.153.29:8080/sebo_backendnew/api/ordermanager/getordersbystate/" + state);
            list = tools.JsonTools.getClientOrdersFromJson(urlState);

            for (ClientOrder c : list) {
                    out.print("<tr>");
                    out.print("<td>" + c.getClient().getId() + "</td>");
                    out.print("<td>" + c.getId() + "</td>");
                    out.print("<td>" + c.getOrderDate() + "</td>");
                    
                    if (state ==31){
                    out.print("<td>Complet</td>");}
                    else
                    {out.print("<td>Incomplet</td>");}
                    out.print("<td><a href=\"http://localhost:8080/sebo_bomagasinier/jsp/OrderDetails.jsp?id=" + c.getId() + "\"><button type=\"button\" class=\"btn\">Details</button></a></td>");
                    out.print("</tr>");
            }
           }
           catch (Exception e)
           {
               System.out.print(e.getMessage());
           }
      
        
        
        return "";
    }*/
}