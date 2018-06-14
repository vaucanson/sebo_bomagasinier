/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tools;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import dto.ClientOrder;
import dto.OrderLineDetails;
import dto.Product;
import java.io.IOException;
import java.io.Reader;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import javax.json.Json;
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
            //cr�ation  un reader Json qui va analyser le retour de l'url
            javax.json.JsonReader jsonReader = Json.createReader(reader);
            //on demande au reader d'extraire un tableau json
             javax.json.JsonArray arr = jsonReader.readArray();
            for (int i = 0; i < arr.size(); i++)
            {
                // pour chaque �l�ment du tableau, qui est un JsonObject, on utilise Gson pour en faire un objet m�tier
                ClientOrder co = gson.fromJson(arr.getJsonObject(i).toString(), ClientOrder.class);
                list.add(co);
            }
          
            
        } catch (IOException e) {
            e.printStackTrace();
        }
        
        return list;
    }

    public static List<OrderLineDetails> getOrderDetailsFromJson(URL url)
    {
        Gson gson = new Gson();
         List<OrderLineDetails> list = new ArrayList<>();

        try (Reader reader = new URLReader(url)) {
            //cr�ation  un reader Json qui va analyser le retour de l'url
            javax.json.JsonReader jsonReader = Json.createReader(reader);
            //on demande au reader d'extraire un tableau json
            javax.json.JsonArray arr = jsonReader.readArray();
            for (int i = 0; i < arr.size(); i++)
            {
                // pour chaque �l�ment du tableau, qui est un JsonObject, on utilise Gson pour en faire un objet m�tier
                OrderLineDetails co = gson.fromJson(arr.getJsonObject(i).toString(), OrderLineDetails.class);
                list.add(co);
            }
          
            
        } catch (IOException e) {
            e.printStackTrace();
        }
        
        return list;
    }
    
    
    
    public static List<Product> getProductsFromJson(URL url) {
        Gson gson = new Gson();
        List<Product> myList = new ArrayList<Product>();
        
        try (Reader reader = new URLReader(url)) {

            // Convert JSON to Java Object
            JsonArray ja = gson.fromJson(reader, JsonArray.class);
            for (JsonElement je : ja)
            {
                Product prod = gson.fromJson(reader, Product.class);
                myList.add(prod);
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
        
        return myList;
    }
        
    
}
