/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean;

import java.io.DataOutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author boilleau
 */
public abstract class OrderedProductsManager
{
    public static void changeStockQuantity(int refProduct, int quantity) {
       
        URL url = null;
        
        String urlstr = "http://localhost:8080/"
                + "sebo_backendnew/api/"
                + "resupplymanager/addtostock/%d/%d";
        urlstr = String.format(urlstr, refProduct, quantity);
        try
        {
            url = new URL(urlstr);
        } catch (MalformedURLException ex)
        {
            Logger.getLogger(OrderedProductsManager.class.getName()).log(Level.SEVERE, null, ex);
        }

        try {
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("POST");
            
            conn.setDoOutput(true);
            DataOutputStream wr = new DataOutputStream(conn.getOutputStream());
            wr.flush();
            wr.close();
            
            int responseCode = conn.getResponseCode();
        }
        catch (Exception ex) {
            ex.printStackTrace();
        }

    }
}
