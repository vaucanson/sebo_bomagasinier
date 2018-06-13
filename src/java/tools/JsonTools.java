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
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import jdk.nashorn.api.scripting.URLReader;

/**
 *
 * @author mattar
 */
public class JsonTools {
    
    public static List<ClientOrder> getClientOrdersFromJson(URL url)
    {
         Gson gson = new Gson();
         List<ClientOrder> list = new ArrayList<>();

        try (Reader reader = new URLReader(url)) {

            // Convert JSON to Java Object
            list = gson.fromJson(reader, List.class);

        } catch (IOException e) {
            e.printStackTrace();
        }
        
        return list;
    }
        
    
}
