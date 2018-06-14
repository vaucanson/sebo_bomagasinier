/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import java.io.Serializable;

/**
 *
 * @author djenadi
 */
public class Product implements Serializable {

    private int id;

    private String name;
    
    private String description;
    
    private String urlPicture;
    
    private Type type;
    
    private Category category;
    
    private float price;
    
    private Supplier supplier;


    
    private int stock;
    
    private String reference;
    
    private int minLimit;

    public Product() {
    }

    public Product(int id, String name, String description, String urlPicture ,Type type, Category category, float price, Supplier supplier, int Stock, int limit, String reference) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.category = category;
        this.price = price;
        this.stock = Stock;
        this.minLimit = limit;
        this.reference = reference;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }


    public int getStock() {
        return stock;
    }

    public void setStock(int Stock) {
        this.stock = Stock;
    }

    public int getMinLimit() {
        return minLimit;
    }

    public void setMinLimit(int minLimit) {
        this.minLimit = minLimit;
    }

    public String getReference() {
        return reference;
    }

    public void setReference(String reference) {
        this.reference = reference;
    }
    
    public Supplier getSupplier() {
        return supplier;
    }

    public void setSupplier(Supplier supplier) {
        this.supplier = supplier;
    }
    
        public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getUrlPicture() {
        return urlPicture;
    }

    public void setUrlPicture(String urlPicture) {
        this.urlPicture = urlPicture;
    }
    
    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", name=" + name + ", type=" + type + ", category=" + category + ", price=" + price + ", stock=" + stock + ", reference=" + reference + ", minLimit=" + minLimit + ", orderLines=" +  '}';
    }
    
    
           
}
