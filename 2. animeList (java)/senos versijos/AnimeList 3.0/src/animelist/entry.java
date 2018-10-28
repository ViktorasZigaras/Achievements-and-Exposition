
package animelist;

import java.lang.Integer;

public class entry {

    private Integer ID;
    private String name;
    private String type;
    private Integer lenght;
    private Integer weight;
    private Integer timesWatched;
    private String list;
      
    public Integer getID(){
        return ID;
    }
    
    public String getName(){
        return name;
    }
    
    public String getType(){
        return type;
    }
    
    public Integer getLenght(){
        return lenght;
    }
    
    public Integer getWeight(){
        return weight;
    }
    
    public Integer getTimesWatched(){
        return timesWatched;
    }
    
    public String getList(){
        return list;
    }
    
    public void setID(int id){
        ID = id;
    }
    
    public void setName(String Name){
        name = Name;
    }
    
    public void setType(String Type){
        type = Type;
    }
    
    public void setLenght(int Lenght){
        lenght = Lenght;
    }
    
    public void setWeight(int Weight){
        weight = Weight;
    }
    
    public void setTimesWatched(int TimesWatched){
        timesWatched = TimesWatched;
    }
    
    public void setList(String List){
        list = List;
    }
            
}
