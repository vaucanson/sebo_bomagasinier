
package dto;

import java.io.Serializable;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

/**
 *
 * @author djenadi
 */

public class SupplierOrderLine implements Serializable {
    private int id;
    private int quantity;
    private Product product;
    private float subTotal;    

    public SupplierOrderLine() {
    }
    
    /**
     * Constructeur avec seulement produit et quantité
     * @param quantity
     * @param product
     */
    public SupplierOrderLine(Product product, int quantity) { 
        this(0, product, quantity, 0);
    }

    /**
     * Constructeur avec id
     * @param id
     * @param quantity
     * @param product
     * @param subTotal
     * @param order 
     */
    public SupplierOrderLine(int id, Product product, int quantity, float subTotal) {
        this.id = id;
        
        if (quantity > 0)
        {
            this.quantity = quantity;
        }
        else
        {
            this.quantity = 1;
        }
        
        
        this.product = product;
        this.subTotal = quantity * product.getPrice();
    }
    
    
    
    


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public float getSubTotal() {
        return subTotal;
    }

    public void setSubTotal(float subTotal) {
        this.subTotal = subTotal;
    }
    
     
}
