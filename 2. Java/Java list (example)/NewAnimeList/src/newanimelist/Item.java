/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newanimelist;

/**
 *
 * @author Viktoras
 */
public class Item {
    
    public Item(Integer id, String title, String description, Integer price, Integer stock, Location location, String comment) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.price = price;
        this.stock = stock;
        this.comment = comment;
        this.location = location;
    }
    
    private Integer id;
    
    public Integer getId(){
        return id;
    }
    
    public void setId(Integer value){
        id = value;
    }
    
    private String title;
    
    public String getTitle(){
        return title;
    }
    
    public void setTitle(String value){
        title = value;
    }
    
    private String description;
    
    public String getDescription(){
        return description;
    }
    
    public void setDescription(String value){
        description = value;
    }
    
    private Integer price;
    
    public Integer getPrice(){
        return price;
    }
    
    public void setPrice(Integer value){
        price = value;
    }
    
    private Integer stock;
    
    public Integer getStock(){
        return stock;
    }
    
    public void setStock(Integer value){
        stock = value;
    }
    
    private String comment;
    
    public String getComment(){
        return comment;
    }
    
    public void setComment(String value){
        comment = value;
    }
    
    private Location location;
      
    public Location getLocation(){
        return location;
    }
    
    public void setLocation(Location value){
        location = value;
    }
         
}
