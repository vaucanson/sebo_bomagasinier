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
public class Supplier implements Serializable {

    private int id;
    
    private String name;

    private Address address;

    public Supplier() {
    }

    public Supplier(int id, String name, Address address) {
        this.id = id;
        this.name = name;
        this.address = address;
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

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Supplier{" + "id=" + id + ", name=" + name + ", address=" + address + ", resupplyOrders=" + '}';
    }
    
    
    
    
}
