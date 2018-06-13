/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tools;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.stream.JsonReader;
import dto.ClientOrder;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import javax.json.Json;
import javax.json.JsonArray;
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
            //création  un reader Json qui va analyser le retour de l'url
            javax.json.JsonReader jsonReader = Json.createReader(reader);
            //on demande au reader d'extraire un tableau json
            JsonArray arr = jsonReader.readArray();
            for (int i = 0; i < arr.size(); i++)
            {
                // pour chaque élément du tableau, qui est un JsonObject, on utilise Gson pour en faire un objet métier
                ClientOrder co = gson.fromJson(arr.getJsonObject(i).toString(), ClientOrder.class);
                list.add(co);
            }
          
            
        } catch (IOException e) {
            e.printStackTrace();
        }
        
        return list;
    }
        
    
}
