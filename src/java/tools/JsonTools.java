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
import dto.Product;
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
    
//    public static List<ClientOrder> getClientOrdersFromJson(URL url)
//    {
//         Gson gson = new Gson();
//         List<ClientOrder> list = new ArrayList<>();
//
//        try (Reader reader = new URLReader(url)) {
//
//            // Convert JSON to Java Object
//            JsonArray ja = gson.fromJson(reader, JsonArray.class);
//            
//            for (JsonElement je : ja)
//            {
//                ClientOrder co = gson.fromJson(reader, ClientOrder.class);
//                list.add(co);
//            }
//
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//        
//        return list;
//    }
    
    
    
    
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
