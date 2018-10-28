
package animelist;

import java.io.*;
import java.util.ArrayList;
import java.lang.Integer;
import java.lang.Math;

public class operations {

    private AnimeListWindow window1;
    private FileReader configReader;
    private FileReader seenReader;
    private FileReader watchingReader;
    private FileReader knownReader;
    private FileWriter seenWriter;
    private FileWriter watchingWriter;
    private FileWriter knownWriter;
    private String config;// = "d:/animeList/config.txt";
    private String seen;
    private String watching;
    private String known;
    private ArrayList seenList= new ArrayList();
    private ArrayList watchingList = new ArrayList();
    private ArrayList knownList = new ArrayList();
    private ArrayList reccomendedList = new ArrayList();
    private ArrayList IdIndex = new ArrayList();
    private int nextID = 1;
    private int maxWeight = 1;
    
    //kontruktorius
    public operations(AnimeListWindow window){
        try {
            window1 = window;
            config = window1.getJTextField5().getText();
            openConfigurationFile();
            inputDataFrom(seenReader, seenList);
            inputDataFrom(watchingReader, watchingList);
            inputDataFrom(knownReader,knownList);
            sortList(seenList);
            sortList(watchingList);
            sortList(knownList);
            makeReccomendedList();
            showImputedEntities(seenList, window1.getJTextArea1());
            showImputedEntities(watchingList, window1.getJTextArea3());
            showImputedEntities(knownList, window1.getJTextArea2());
            showImputedEntities(reccomendedList, window1.getJTextArea4());
            //sudarom ID sarasa
            calculateIdIndex();
            //atlaisvinam input streams
            seenReader.close();
            watchingReader.close();
            knownReader.close();
            configReader.close();
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode operations!");
        }
    }
    
    public void closeWriters(){
        try {
            //atlaisvinam streams
            seenWriter.close();
            watchingWriter.close();
            knownWriter.close();
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode closeWriters!");
        }
    }
    
    private void openConfigurationFile(){
        try {
            configReader = new FileReader(config);
            //atsidarem config faila, skaitysim failus, is kuriu ikelsim duomenis
            //skaitom seen.txt
            char Buffer[] = new char[100];
            char BufToString[];
            char trash[] = new char[5];
            int readCharacters = 0;
            configReader.read(Buffer, readCharacters, 1);
            while (Buffer[readCharacters]!=';'){
                readCharacters++;
                configReader.read(Buffer, readCharacters, 1);
            }
            BufToString = new char[readCharacters];
            for (int i = 0; i < readCharacters; i++){
                BufToString[i] = Buffer[i];
            }
            //perskaitem seen.txt adresa
            seen = new String(BufToString);
            seenReader = new FileReader(seen);
            //atsidarem seen.txt
            
            //skaitom watching.txt
            Buffer = new char[100];
            readCharacters = 0;
            configReader.read(trash, 1, 2); //atsikratom end of line char
            configReader.read(Buffer, readCharacters, 1);
            while (Buffer[readCharacters]!=';'){
                readCharacters++;
                configReader.read(Buffer, readCharacters, 1);
            }
            BufToString = new char[readCharacters];
            for (int i = 0; i < readCharacters; i++){
                BufToString[i] = Buffer[i];
            }
            //perskaitem watching.txt adresa
            watching = new String(BufToString);
            watchingReader = new FileReader(watching);
            //atsidarem watching.txt
            
            //skaitom known.txt
            Buffer = new char[100];
            readCharacters = 0;
            configReader.read(trash, 1, 2); //atsikratom end of line char
            configReader.read(Buffer, readCharacters, 1);
            while (Buffer[readCharacters]!=';'){
                readCharacters++;
                configReader.read(Buffer, readCharacters, 1);
            }
            BufToString = new char[readCharacters];
            for (int i = 0; i < readCharacters; i++){
                BufToString[i] = Buffer[i];
            }
            //perskaitem known.txt adresa
            known = new String(BufToString);
            knownReader = new FileReader(known);
            //atsidarem known.txt
            
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode openConfigurationFile!");
        }
    }
    
    private void inputDataFrom(FileReader reader, ArrayList list){
        //su salyga, kad visi duomenys teisingai suvesti i faila
        
        try {
        
            //kintamuju inicializacija    
            int readCharacters = 0;
            String string;
            Integer id = 0;
            Integer lenght = 0;
            Integer weight = 0;
            Integer times = 0;
            entry naujas;
            boolean vykstaPerkelimas;
            char pirmasEilutesSimbolis[] = new char[3];
            char IDBuf[];
            char NameBuf[];
            char TypeBuf[];
            char LenghtBuf[];
            char WeightBuf[];
            char TimeSBuf[];
            char trash[] = new char[3];
            char IDBuf2[];
            char NameBuf2[];
            char TypeBuf2[];
            char LenghtBuf2[];
            char WeightBuf2[];
            char TimeSBuf2[];
        
            //tikrinam pirma pirmos eilutes simboli
            reader.read(pirmasEilutesSimbolis, 0, 1);
            //jei ne failo pabaiga padedam simboli i reikiama vieta
            if (pirmasEilutesSimbolis[0]!='#'){
                vykstaPerkelimas = true;
            } else {
                vykstaPerkelimas = false;
            }
        
            //skaitom visas eilutes
            while (vykstaPerkelimas!=false){ //kol nesibaigia failas
                     
                IDBuf = new char[5];
                IDBuf[0] = pirmasEilutesSimbolis[0];
                readCharacters = 1;
                NameBuf = new char[50];
                TypeBuf = new char[10];
                LenghtBuf = new char[5];
                WeightBuf = new char[5];
                TimeSBuf = new char[5];
            
                //skaitom atributa ID
                reader.read(IDBuf, readCharacters, 1);
                while (IDBuf[readCharacters]!=','){
                    readCharacters++;
                    reader.read(IDBuf, readCharacters, 1);
                }
                //keistas bugas kuris numusa man reikalinga nulinio indekso elementa
                IDBuf[0] = pirmasEilutesSimbolis[0];
                //numetam kableli
                IDBuf2 = new char[readCharacters];
                for (int i = 0; i < readCharacters; i++){
                    IDBuf2[i] = IDBuf[i];
                }
                //numetam tarpa
                reader.read(trash, 1, 1);

                //skaitom atributa name
                readCharacters = 0;
                reader.read(NameBuf, readCharacters, 1);
                while (NameBuf[readCharacters]!=','){
                    readCharacters++;
                    reader.read(NameBuf, readCharacters, 1);
                }
                //numetam kableli
                NameBuf2 = new char[readCharacters];
                for (int i = 0; i < readCharacters; i++){
                    NameBuf2[i] = NameBuf[i];
                }
                //numetam tarpa
                reader.read(trash, 1, 1);

                //skaitom atributa type
                readCharacters = 0;
                reader.read(TypeBuf, readCharacters, 1);
                while (TypeBuf[readCharacters]!=','){
                    readCharacters++;
                    reader.read(TypeBuf, readCharacters, 1);
                }
                //numetam kableli
                TypeBuf2 = new char[readCharacters];
                for (int i = 0; i < readCharacters; i++){
                    TypeBuf2[i] = TypeBuf[i];
                }
                //numetam tarpa
                reader.read(trash, 1, 1);

                //skaitom atributa lenght
                readCharacters = 0;
                reader.read(LenghtBuf, readCharacters, 1);
                while (LenghtBuf[readCharacters]!=','){
                    readCharacters++;
                    reader.read(LenghtBuf, readCharacters, 1);
                }
                //numetam kableli
                LenghtBuf2 = new char[readCharacters];
                for (int i = 0; i < readCharacters; i++){
                    LenghtBuf2[i] = LenghtBuf[i];
                }
                //numetam tarpa
                reader.read(trash, 1, 1);

                //skaitom atributa weight
                readCharacters = 0;
                reader.read(WeightBuf, readCharacters, 1);
                while (WeightBuf[readCharacters]!=','){
                    readCharacters++;
                    reader.read(WeightBuf, readCharacters, 1);
                }
                //numetam kableli
                WeightBuf2 = new char[readCharacters];
                for (int i = 0; i < readCharacters; i++){
                    WeightBuf2[i] = WeightBuf[i];
                }
                //numetam tarpa
                reader.read(trash, 1, 1);

                //skaitom atributa times
                readCharacters = 0;
                reader.read(TimeSBuf, readCharacters, 1);
                while (TimeSBuf[readCharacters]!=';'){
                    readCharacters++;
                    reader.read(TimeSBuf, readCharacters, 1);
                }
                //numetam kabliataski
                TimeSBuf2 = new char[readCharacters];
                for (int i = 0; i < readCharacters; i++){
                    TimeSBuf2[i] = TimeSBuf[i];
                }

                //numetam end of line
                reader.read(trash, 1, 2);


                //kuriam ir uzpildom entities

                naujas = new entry();
                //pridedam ID
                string = new String(IDBuf2);
                id = new Integer(string);
                naujas.setID(id);
                //pridedam varda
                naujas.setName(new String(NameBuf2));
                //pridedam tipa
                naujas.setType(new String(TypeBuf2));
                //pridedam ilgi
                string = new String(LenghtBuf2);
                lenght = new Integer(string);
                naujas.setLenght(lenght);
                //pridedam svori
                string = new String(WeightBuf2);
                weight = new Integer(string);
                naujas.setWeight(weight);
                //pridedam ziurejimu skaiciu
                string = new String(TimeSBuf2);
                times = new Integer(string);
                naujas.setTimesWatched(times);           

                //dedam entities i sarasa
                list.add(naujas);

                //tikrinam pirma kitos eilutes simboli
                reader.read(pirmasEilutesSimbolis, 0, 1);
                //jei ne failo pabaiga padedam simboli i reikiama vieta
                if (pirmasEilutesSimbolis[0]!='#'){
                    vykstaPerkelimas = true;
                } else {
                    vykstaPerkelimas = false;
                }
            
            }
                
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode inputDataFrom!");
        }
        
    }
    
    private void showImputedEntities(ArrayList list, javax.swing.JTextArea jTextArea){
        try {
            //uznulinam pries rasydami
            jTextArea.setText("");
            int size = list.size();
            //rasom
            for (int i = 0; i < size; i++){
                entry temp = (entry)list.get(i);
                jTextArea.append(temp.getID()+", "+temp.getName()+", "+temp.getType()+", "+temp.getLenght()+", "+temp.getWeight()+", "+temp.getTimesWatched()+"\n");
            }
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode showImputedEntities!");
        }
    }
    
    public void saveAllData(){
        try {
            //issaugom visas turimas esybes i zinomus failus
            //uznulina failus...???
            seenWriter = new FileWriter(seen);
            watchingWriter = new FileWriter(watching);
            knownWriter = new FileWriter(known);
            //uznulinam seen faila
            seenWriter.flush();
            //uznulinam watching faila
            watchingWriter.flush();
            //uznulinam known faila
            knownWriter.flush();
            //issaugojam seen list
            saveList(seenList, seenWriter);
            //issaugojam watching list
            saveList(watchingList, watchingWriter);
            //issaugojam known list
            saveList(knownList, knownWriter);
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode saveAllData!");
        }
    }
    
    private void saveList(ArrayList list, FileWriter writer){
        try {
            //kiekvienam irasui - po eilute, gale kabliataskis ir end of line simbolis
            entry temp;
            for (int i = 0; i < list.size(); i++){
                //pasiimam entity
                temp = (entry)list.get(i);
                //id
                writer.write(temp.getID()+", ");
                //name
                writer.write(temp.getName()+", ");
                //type
                writer.write(temp.getType()+", ");
                //lenght
                writer.write(temp.getLenght()+", ");
                //weight
                writer.write(temp.getWeight()+", ");
                //times seen + kabliataskis, kad palaikytu times watched string reiksme
                writer.write(temp.getTimesWatched()+";");
                //end of line
                char eol[] = new char[2];
                eol[0] = (char)13;
                eol[1] = (char)10;
                writer.write(eol);
            }
            //failo gale #
            writer.write('#');
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode saveList!");
        }
    }
    
    private void calculateIdIndex(){
        try {
            entry temp;
            int size;
            //seen list
            size = seenList.size();
            for (int i = 0; i < size; i++){
                temp = (entry)seenList.get(i);
                IdIndex.add(temp.getID());
            }
            //watching list
            size = watchingList.size();
            for (int i = 0; i < size; i++){ 
                temp = (entry)watchingList.get(i);
                IdIndex.add(temp.getID());
            }
            //known list
            size = knownList.size();
            for (int i = 0; i < size; i++){
                temp = (entry)knownList.get(i);
                IdIndex.add(temp.getID());
            }
            sortIDList();
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode calculateIdIndex!");
        }
    }
    
    private void generateNextID(){
        try {
            //generuojamas naujas ID - maziausias esamas laisvas arba didesnis ne visi iki siol buve
            boolean parinktas = false;
            int i = 1;
            int j = 0;
            int size = IdIndex.size();
            int temp;
            while (parinktas!=true){
                    parinktas = false;
                    if (j < size){
                        temp = (Integer)IdIndex.get(j);
                        if (i != temp){
                            parinktas = true;
                            nextID = i;
                        }
                        j++;
                    } else  if (i > (Integer)IdIndex.get(size-1)){
                        parinktas = true;
                        nextID = i;
                    }
                    
                    i++;
            }
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode generateNextID!");
        }
    }
    
    public void makeNewEntry(){
        //gali buti bet kokio tipo new entry
        try {
            //generuojam ir pasitikrinam
            generateNextID();
            entry newEntry = new entry();
            //imam ID
            newEntry.setID(nextID);
            //imam name
            newEntry.setName(window1.getJTextField2().getText());
            //imam type
            newEntry.setType(window1.getJComboBox2().getSelectedItem().toString());
            //imam lenght
            newEntry.setLenght(new Integer(window1.getJTextField3().getText()));
            //imam weight
            newEntry.setWeight(new Integer(window1.getJComboBox3().getSelectedItem().toString()));
            //imam times watched
            newEntry.setTimesWatched(new Integer(window1.getJTextField4().getText()));
            //pasirenkam sarasa
            String list = window1.getJComboBox4().getSelectedItem().toString();
            //issaugom nauja elementa ir perpiesiam viska
            if (list.matches("Known")){
                knownList.add(newEntry);
                //updateReccomendedList(newEntry);
                IdIndex.add(nextID);
                sortList(knownList);
                sortIDList();
                //visada perkuriam reccomended tik tam, kad garantuotai pasikeistu kai reikia
                maxWeight = 1;
                makeReccomendedList();
                //parodom
                showImputedEntities(knownList, window1.getJTextArea2());
                showImputedEntities(reccomendedList, window1.getJTextArea4());
            } else if (list.matches("Watching")){
                watchingList.add(newEntry);
                IdIndex.add(nextID);
                sortList(watchingList);
                sortIDList();
                showImputedEntities(watchingList, window1.getJTextArea3());
            } else if (list.matches("Seen")){
                seenList.add(newEntry);
                IdIndex.add(nextID);
                sortList(seenList);
                sortIDList();
                showImputedEntities(seenList, window1.getJTextArea1());
            } else {
                System.out.println("Klaidinga galimybe pasirinkti sarasa!!!");
            }  
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode makeNewEntry!");
        }
    }
    
    private void sortList(ArrayList list){
        try {
            int size = list.size();
            boolean buvoPakitimu = true;
            entry entryx;
            entry entryxPlusOne;
            entry temp;
            while (buvoPakitimu == true){
                buvoPakitimu = false;
                for (int i = 0; i < size-1; i++){
                    entryx = (entry)list.get(i);
                    entryxPlusOne = (entry)list.get(i+1);
                    if (entryx.getID() > entryxPlusOne.getID()){
                        temp = entryxPlusOne;
                        entryxPlusOne = entryx;
                        entryx = temp;
                        //issaugom
                        list.set(i, entryx);
                        list.set(i+1, entryxPlusOne);
                        buvoPakitimu = true;
                    }
                }
            }
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode sortList!");
        }
    }
    
    private void sortIDList(){
        try {
            int size = IdIndex.size();
            boolean buvoPakitimu = true;
            Integer entryx;
            Integer entryxPlusOne;
            Integer temp;
            while (buvoPakitimu == true){
                buvoPakitimu = false;
                for (int i = 0; i < size-1; i++){
                    entryx = (Integer)IdIndex.get(i);
                    entryxPlusOne = (Integer)IdIndex.get(i+1);
                    if (entryx > entryxPlusOne){
                        temp = entryxPlusOne;
                        entryxPlusOne = entryx;
                        entryx = temp;
                        //issaugom
                        IdIndex.set(i, entryx);
                        IdIndex.set(i+1, entryxPlusOne);
                        buvoPakitimu = true;
                    }
                }
            }
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode sortIDList!");
        }
    }
    
    private void makeReccomendedList(){
        //kai nuskaitomi pradiniai duomenys
        try {
            //nustatom maximalu esama svori
            int currentWeight = maxWeight;
            int size = knownList.size();
            entry temp;
            boolean pakito = false;
            for (int i = 0; i < size; i++){
                temp = (entry)knownList.get(i);
                if (temp.getWeight() > currentWeight){
                    currentWeight = temp.getWeight();
                    pakito = true;
                }
            }
            //jei svoris pakito - updatinam
            if (pakito == true){
                maxWeight = currentWeight;
            }
            //kuriam sarasa
            reccomendedList.clear();
            for (int j = 0; j < size; j++){
                temp = (entry)knownList.get(j);
                if (temp.getWeight() == maxWeight){
                    reccomendedList.add(temp);
                }
            }
                
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode makeReccomendedList!");
        }
    }
    
    public int markAsSeen(){
        int n = 0;
        try {
            entry temp = new entry();
            entry entryToCopy = new entry();
            Integer ID = new Integer(window1.getJTextField1().getText());
            int size = watchingList.size();
            for (int i = 0; i < size; i++){
                temp = (entry)watchingList.get(i);
                if (temp.getID().equals(ID)){
                    entryToCopy = temp;
                    n = 1;
                }
            }
            if (n == 1){
                //padidinam ziuretu kartu skaiciu
                entryToCopy.setTimesWatched(entryToCopy.getTimesWatched()+1);
                //idedam i ziuretu sarasa ir surusiuojam
                seenList.add(entryToCopy);
                sortList(seenList);
                //isimam is ziurimu saraso
                watchingList.remove(entryToCopy);
                //perpiesiam sarasus
                showImputedEntities(seenList, window1.getJTextArea1());
                showImputedEntities(watchingList, window1.getJTextArea3());
            }
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode markAsSeen!");
        }
        return n;
        //n = 0 - nerastas elementas sarase; n = 1 - rastas
    }
    
    public int markAsWatching(){
        int n = 0;
        entry temp;
        entry entryToCopy = new entry();
        boolean isSeen = false;
        boolean isKnown = false;
        try {
            Integer ID = new Integer(window1.getJTextField1().getText());
            //galima imti tiek is known
            int size = knownList.size();
            for (int i = 0; i < size; i++){
                temp = (entry)knownList.get(i);
                if (temp.getID().equals(ID)){
                    entryToCopy = temp;
                    n = 1;
                    isKnown = true;
                }
            }
            //galima imti tiek is seen pakartotiniam ziurejimui
            size = seenList.size();
            for (int i = 0; i < size; i++){
                temp = (entry)seenList.get(i);
                if (temp.getID().equals(ID)){
                    entryToCopy = temp;
                    n = 1;
                    isSeen = true;
                }
            }
            if (n == 1){
                //idedam i ziurimu sarasa ir surusiuojam
                watchingList.add(entryToCopy);
                sortList(watchingList);
                //jei imam is ziuretu saraso
                if (isSeen == true){
                    //isimam is ziuretu saraso
                    seenList.remove(entryToCopy);
                    //perpiesiam sarasus
                    showImputedEntities(watchingList, window1.getJTextArea3());
                    showImputedEntities(seenList, window1.getJTextArea1());
                }
                //jei imam is zinomu saraso
                if (isKnown == true){
                    //isimam is zinomu saraso
                    knownList.remove(entryToCopy);
                    //visada perkuriam reccomended tik tam, kad garantuotai pasikeistu kai reikia
                    maxWeight = 1;
                    makeReccomendedList();
                    //perpiesiam sarasus
                    showImputedEntities(watchingList, window1.getJTextArea3());
                    showImputedEntities(knownList, window1.getJTextArea2());
                    showImputedEntities(reccomendedList, window1.getJTextArea4());
                }
            }
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode markAsWatching!");
        }
        return n;
        //n = 0 - nerastas elementas sarase; n = 1 - rastas
    }
    
    public void suggestRandom(){
        try {
            //naudoju entry vietoje object, kad galeciau lyginti reiksmes
            Integer suggestedID;
            int pozicija = 1;
            double maxWeightRandom = 0.0;
            ArrayList randomID = new ArrayList();
            entry temp;
            //sudarom galimu ID masyva
            int size = reccomendedList.size();
            for (int i = 0; i < size; i++){
                temp = (entry)reccomendedList.get(i);
                randomID.add(temp.getID());
            }
            //sudedam svorius
            double buf[] = new double[size];
            for (int i = 0; i < size; i++){
                buf[i] = Math.random();
            }
            //nustatom didziausia svori
            for (int i = 0; i < size; i++){
                if (buf[i] > maxWeightRandom){
                    maxWeightRandom = buf[i];
                    pozicija = i;
                }
            }
            //imam ID su didziausiu svoriu, sugeneruotu atsitiktinai
            suggestedID = (Integer)randomID.get(pozicija);
            //isvedam gauta rezultata
            window1.getJLabel12().setText(suggestedID.toString());
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode suggestRandom!");
        }
    }
    
    public int changeEntry(boolean sameName, boolean sameLenght, boolean sameTimes){
        int n = 0;
        try {
            int size;
            int pozicija = 0;
            int ieskomas = new Integer(window1.getJTextField1().getText());
            int randamas;
            entry temp = new entry();
            entry newEntry = new entry();
            //ieskom iraso:
            //pasirenkam sarasa
            String list = window1.getJComboBox4().getSelectedItem().toString();
            if (list.matches("Known")){
                size = knownList.size();
                for (int i = 0; i < size; i++){
                    temp = (entry)knownList.get(i);
                    randamas = temp.getID();
                    if (randamas == ieskomas){
                        //toks ID rastas
                        pozicija = i;
                        n = 1;
                    }
                }
                //beveik pasikartos kodas 3 kartus, bet tiek to;
                if (n == 1){
                    //kuriam naujo iraso duomenis
                    //ID
                    temp = (entry)knownList.get(pozicija);
                    newEntry.setID(temp.getID());
                    //vardas
                    if (sameName == true){
                       newEntry.setName(temp.getName());
                    } else {
                        newEntry.setName(window1.getJTextField2().getText());
                    }
                    //tipas
                    newEntry.setType(window1.getJComboBox2().getSelectedItem().toString());
                    //ilgis
                    if (sameLenght == true){
                       newEntry.setLenght(temp.getLenght());
                    } else {
                        newEntry.setLenght(new Integer(window1.getJTextField3().getText()));
                    }
                    //svoris
                    newEntry.setWeight((new Integer(window1.getJComboBox3().getSelectedItem().toString())));
                    //ziureta kartu
                    if (sameTimes == true){
                       newEntry.setTimesWatched(temp.getTimesWatched());
                    } else {
                        newEntry.setTimesWatched(new Integer(window1.getJTextField4().getText()));
                    }
                    //sukeiciam info
                    knownList.set(pozicija, newEntry);
                    //visada perkuriam reccomended tik tam, kad garantuotai pasikeistu kai reikia
                    maxWeight = 1;
                    makeReccomendedList();
                    //parodom
                    showImputedEntities(knownList, window1.getJTextArea2());
                    showImputedEntities(reccomendedList, window1.getJTextArea4());       
                }
            } else if (list.matches("Watching")){
                size = watchingList.size();
                for (int i = 0; i < size; i++){
                    temp = (entry)watchingList.get(i);
                    randamas = temp.getID();
                    if (randamas == ieskomas){
                        //toks ID rastas
                        pozicija = i;
                        n = 1;
                    }
                }
                //beveik pasikartos kodas 3 kartus, bet tiek to;
                if (n == 1){
                    //kuriam naujo iraso duomenis
                    //ID
                    temp = (entry)watchingList.get(pozicija);
                    newEntry.setID(temp.getID());
                    //vardas
                    if (sameName == true){
                       newEntry.setName(temp.getName());
                    } else {
                        newEntry.setName(window1.getJTextField2().getText());
                    }
                    //tipas
                    newEntry.setType(window1.getJComboBox2().getSelectedItem().toString());
                    //ilgis
                    if (sameLenght == true){
                       newEntry.setLenght(temp.getLenght());
                    } else {
                        newEntry.setLenght(new Integer(window1.getJTextField3().getText()));
                    }
                    //svoris
                    newEntry.setWeight((new Integer(window1.getJComboBox3().getSelectedItem().toString())));
                    //ziureta kartu
                    if (sameTimes == true){
                       newEntry.setTimesWatched(temp.getTimesWatched());
                    } else {
                        newEntry.setTimesWatched(new Integer(window1.getJTextField4().getText()));
                    }
                    //sukeiciam info
                    watchingList.set(pozicija, newEntry);
                    //parodom
                    showImputedEntities(watchingList, window1.getJTextArea3());
                }
            } else if (list.matches("Seen")){
                size = seenList.size();
                for (int i = 0; i < size; i++){
                    temp = (entry)seenList.get(i);
                    randamas = temp.getID();
                    if (randamas == ieskomas){
                        //toks ID rastas
                        pozicija = i;
                        n = 1;
                    }
                }
                //beveik pasikartos kodas 3 kartus, bet tiek to;
                if (n == 1){
                    //kuriam naujo iraso duomenis
                    //ID
                    temp = (entry)seenList.get(pozicija);
                    newEntry.setID(temp.getID());
                    //vardas
                    if (sameName == true){
                       newEntry.setName(temp.getName());
                    } else {
                        newEntry.setName(window1.getJTextField2().getText());
                    }
                    //tipas
                    newEntry.setType(window1.getJComboBox2().getSelectedItem().toString());
                    //ilgis
                    if (sameLenght == true){
                       newEntry.setLenght(temp.getLenght());
                    } else {
                        newEntry.setLenght(new Integer(window1.getJTextField3().getText()));
                    }
                    //svoris
                    newEntry.setWeight((new Integer(window1.getJComboBox3().getSelectedItem().toString())));
                    //ziureta kartu
                    if (sameTimes == true){
                       newEntry.setTimesWatched(temp.getTimesWatched());
                    } else {
                        newEntry.setTimesWatched(new Integer(window1.getJTextField4().getText()));
                    }
                    //sukeiciam info
                    seenList.set(pozicija, newEntry);
                    //parodom
                    showImputedEntities(seenList, window1.getJTextArea1());
                }
            } else {
                System.out.println("Klaidinga galimybe pasirinkti sarasa!!!");
            }           
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode changeEntry!");
        }
        return n; //n = 0 - ID nerastas, n = 1 - ID rastas
    }
    
    public int deleteEntry(){
        int n = 0;
        try {
            int size;
            int pozicija = 0;
            Integer ieskomas = new Integer(window1.getJTextField1().getText());
            int randamas;
            entry temp = new entry();
            //ieskom iraso:
            //pasirenkam sarasa
            String list = window1.getJComboBox4().getSelectedItem().toString();
            if (list.matches("Known")){
                size = knownList.size();
                for (int i = 0; i < size; i++){
                    temp = (entry)knownList.get(i);
                    randamas = temp.getID();
                    if (randamas == ieskomas){
                        //toks ID rastas
                        pozicija = i;
                        n = 1;
                    }
                }
                if (n == 1){
                    //suzinom atlaisvinama ID
                    IdIndex.remove(ieskomas);
                    //trinam irasa
                    knownList.remove(pozicija);
                    //visada perkuriam reccomended tik tam, kad garantuotai pasikeistu kai reikia
                    maxWeight = 1;
                    makeReccomendedList();
                    //parodom
                    showImputedEntities(knownList, window1.getJTextArea2());
                    showImputedEntities(reccomendedList, window1.getJTextArea4());       
                }
            } else if (list.matches("Watching")){
                size = watchingList.size();
                for (int i = 0; i < size; i++){
                    temp = (entry)watchingList.get(i);
                    randamas = temp.getID();
                    if (randamas == ieskomas){
                        //toks ID rastas
                        pozicija = i;
                        n = 1;
                    }
                }
                if (n == 1){
                    //suzinom atlaisvinama ID
                    IdIndex.remove(ieskomas);
                    //trinam irasa
                    watchingList.remove(pozicija);
                    //parodom
                    showImputedEntities(watchingList, window1.getJTextArea3());
                }
            } else if (list.matches("Seen")){
                size = seenList.size();
                for (int i = 0; i < size; i++){
                    temp = (entry)seenList.get(i);
                    randamas = temp.getID();
                    if (randamas == ieskomas){
                        //toks ID rastas
                        pozicija = i;
                        n = 1;
                    }
                }
                if (n == 1){
                    //suzinom atlaisvinama ID
                    IdIndex.remove(ieskomas);
                    //trinam irasa
                    seenList.remove(pozicija);
                    //parodom
                    showImputedEntities(seenList, window1.getJTextArea1());
                }
            } else {
                System.out.println("Klaidinga galimybe pasirinkti sarasa!!!");
            }           
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode deleteEntry!");
        }
        return n; //n = 0 - ID nerastas, n = 1 - ID rastas
    }
    
}
