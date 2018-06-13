/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tools;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import dto.ClientOrder;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;

/**
 *
 * @author mattar
 */
public class JsonTools {
    
    public static ClientOrder getClientOrdersFromJson(String url)
    {
         Gson gson = new Gson();

        try (Reader reader = new FileReader(url)) {

            // Convert JSON to Java Object
            ArrayList<ClientOrder> list = gson.fromJson(reader, ArrayList.class);

          /*  for (int i = 0; i < list.size(); i++)
            {
                System.out.println(list.get(i));
            }*/
       // Convert JSON to JsonElement, and later to String
          JsonElement json = gson.fromJson(reader, JsonElement.class);
            String jsonInString = gson.toJson(json);
            System.out.println(jsonInString);

        } catch (IOException e) {
            e.printStackTrace();
        }
        
        return null;
    }
        
    
}
