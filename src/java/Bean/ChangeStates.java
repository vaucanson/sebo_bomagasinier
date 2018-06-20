/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean;

import dto.ClientOrder;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.jsp.JspWriter;

/**
 *
 * @author mattar
 */
public class ChangeStates {
    
    public static void setPrepare(int idOrder)
{
        try
        {
            URL url = new URL("http://172.16.153.29:8080/sebo_backendnew/api/ordermanager/prepare/" + idOrder);
            HttpURLConnection httpCon = (HttpURLConnection) url.openConnection();
            httpCon.setDoOutput(true);
            httpCon.setRequestMethod("PUT");

            
            OutputStreamWriter osw = new OutputStreamWriter(httpCon.getOutputStream());
            osw.write(idOrder);
            osw.close();
            httpCon.getInputStream();

        }
        catch (MalformedURLException mue)
        {
            mue.printStackTrace();
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
    
 
    }
    
    public static void setCancel(int idOrder)
    {
        try
        {
            URL url = new URL("http://172.16.153.29:8080/sebo_backendnew/api/ordermanager/cancel/" + idOrder);
            HttpURLConnection httpCon = (HttpURLConnection) url.openConnection();
            httpCon.setDoOutput(true);
            httpCon.setRequestMethod("PUT");

            
            OutputStreamWriter osw = new OutputStreamWriter(httpCon.getOutputStream());
            osw.write(idOrder);
            osw.close();
            httpCon.getInputStream();

        }
        catch (MalformedURLException mue)
        {
            mue.printStackTrace();
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
    }
    
    
}
