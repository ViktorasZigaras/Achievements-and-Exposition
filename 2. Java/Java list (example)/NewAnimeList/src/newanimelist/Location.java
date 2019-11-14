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
public class Location {
    
    public Location(String country, String city, String street) {
        this.country = country;
        this.city = city;
        this.street = street;
    }
    
    private String country;
    
    public String getCountry(){
        return country;
    }
    
    public void setCountry(String value){
        country = value;
    }
    
    private String city;
    
    public String getCity(){
        return city;
    }
    
    public void setCity(String value){
        city = value;
    }
    
    private String street;
    
    public String getStreet(){
        return street;
    }
    
    public void setStreet(String value){
        street = value;
    }
    
}
