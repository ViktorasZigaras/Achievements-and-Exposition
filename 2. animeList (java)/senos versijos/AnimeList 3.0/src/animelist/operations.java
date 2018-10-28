
package animelist;

import java.io.*;
import java.util.ArrayList;
import javax.swing.*;

public class operations {

    private AnimeWindow window1;
    private FileReader configReader;
    private FileReader seenReader;
    private FileReader watchingReader;
    private FileReader knownReader;
    private FileWriter seenWriter;
    private FileWriter watchingWriter;
    private FileWriter knownWriter;
    private FileWriter IDWriter;
    private FileWriter nameWriter;
    private FileWriter searchWriter;
    private String config;
    private String seen;
    private String watching;
    private String known;
    private String ID;
    private String names;
    private String search;
    private String fileDirektorija;
    private String pictureDirektorija;
    private ArrayList seenList = new ArrayList();
    private ArrayList watchingList = new ArrayList();
    private ArrayList knownList = new ArrayList();
    private ArrayList reccomendedList = new ArrayList();
    private ArrayList IDList = new ArrayList();
    private ArrayList FullList = new ArrayList();
    private ArrayList nameList = new ArrayList();
    private ArrayList IdIndex = new ArrayList();
    private ArrayList tempList = new ArrayList();
    private int nextID = 1;
    private int maxWeight = 1;
    private ImageIcon icon;
    private String[] header = new String [] {"ID", "Name", "Type", "Lenght", "Weight", "Times"};
    private char eol[] = new char[2];
    
    /*perskaito config faila, nuskaito duomenis ir juos parodo*/
    //kontruktorius
    public operations(AnimeWindow window){
        try {
            window1 = window;
            eol[0] = (char)13;
            eol[1] = (char)10;
            config = window1.getUtilTextField().getText();
            openConfigurationFile();
            inputDataFrom(seenReader, seenList);
            inputDataFrom(watchingReader, watchingList);
            inputDataFrom(knownReader,knownList);
            sortList(seenList);
            sortList(watchingList);
            sortList(knownList);
            makeReccomendedList();
            showImputedEntities(seenList, window1.getSeenTable());
            showImputedEntities(watchingList, window1.getWatchingTable());
            showImputedEntities(knownList, window1.getKnownTable());
            showImputedEntities(reccomendedList, window1.getReccomendedTable());
            //sudarom ID sarasa
            calculateIdIndex();
            //atlaisvinam input streams
            seenReader.close();
            watchingReader.close();
            knownReader.close();
            configReader.close();
            //padarom visu esamu ID sarasa velesniam naudojimui
            makeFullList();
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode operations!");
        }
    }
    
    public ArrayList getSeenList(){
        return seenList;
    }
    
    public ArrayList getKnownList(){
        return knownList;
    }
    
    public ArrayList getWatchingList(){
        return watchingList;
    }
    
    public ArrayList getReccomendedList(){
        return reccomendedList;
    }
    
    public ArrayList getIDList(){
        return IDList;
    }
    
    public ArrayList getNameList(){
        return nameList;
    }
    
    public ArrayList getTempList(){
        return tempList;
    }
    
    public String getPictureDirektorija(){
        return pictureDirektorija;
    }
    
    /*uzdaro visus rasymo objektus*/
    public void closeWriters(){
        try {
            //atlaisvinam streams
            seenWriter.close();
            watchingWriter.close();
            knownWriter.close();
            IDWriter.close();
            nameWriter.close();
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode closeWriters!");
        }
    }
    
    /*skaito konfiguracijos faila ir suzino kitu svarbiu failu adresus*/
    private void openConfigurationFile(){
        try {
            configReader = new FileReader(config);
            //atsidarem config faila, skaitysim failus, is kuriu ikelsim duomenis
            
            //nuskaitom pagrindiniu failu direktorija
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
            //perskaitem pagrindiniu failu direktorija
            fileDirektorija = new String(BufToString);
            
            //skaitom seen.txt
            Buffer = new char[100];
            trash = new char[5];
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
            //perskaitem seen.txt adresa
            seen = new String(BufToString);
            seenReader = new FileReader(fileDirektorija+seen);
            
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
            watchingReader = new FileReader(fileDirektorija+watching);
            
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
            knownReader = new FileReader(fileDirektorija+known);
            
            //skaitom ID.txt
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
            //perskaitem ID.txt adresa
            ID = new String(BufToString);
            
            //skaitom name.txt
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
            //perskaitem name.txt adresa
            names = new String(BufToString);
            
            //skaitom search.txt
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
            //perskaitem search.txt adresa
            search = new String(BufToString);
            
            //nuskaitom paveiksliuku direktorija
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
            //perskaitem paveiksliuku direktorija
            pictureDirektorija = new String(BufToString);
            
            
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode openConfigurationFile!");
        }
    }
    
    /*perskaitom duomenis is konkretaus txt duomenu failo*/
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
                NameBuf = new char[100];
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
    
    /*parodom sarasa su duomenimis*/
    public void showImputedEntities(ArrayList list, javax.swing.JTable jTable){
        try {
            int size = list.size();
            //perdarom lentele
            javax.swing.table.DefaultTableModel model = new javax.swing.table.DefaultTableModel(header, size){
                boolean[] canEdit = new boolean [] {
                    false, false, false, false, false, false
                };
                public boolean isCellEditable(int rowIndex, int columnIndex) {
                    return canEdit [columnIndex];
                }
            };
            jTable.setModel(model);
            jTable.getColumnModel().getColumn(0).setPreferredWidth(30);
            jTable.getColumnModel().getColumn(1).setPreferredWidth(200);
            jTable.getColumnModel().getColumn(2).setPreferredWidth(50);
            jTable.getColumnModel().getColumn(3).setPreferredWidth(50);
            jTable.getColumnModel().getColumn(4).setPreferredWidth(50);
            jTable.getColumnModel().getColumn(5).setPreferredWidth(50);
            //uzpildome lentele
            for (int i = 0; i < size; i++){
                entry temp = (entry)list.get(i);
                jTable.setValueAt(temp.getID(), i, 0); 
                jTable.setValueAt(temp.getName(), i, 1); 
                jTable.setValueAt(temp.getType(), i, 2); 
                jTable.setValueAt(temp.getLenght(), i, 3); 
                jTable.setValueAt(temp.getWeight(), i, 4); 
                jTable.setValueAt(temp.getTimesWatched(), i, 5);
            }      
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode showImputedEntities!");
        }
    }
    
    /*parodom sarasa su duomenimis ir papildomai pazymim koks elementas kuriame sarase yra*/
    public void SpecialshowImputedEntities(ArrayList list, javax.swing.JTable jTable){
        try {
            int size = list.size();
            //perdarom lentele
            javax.swing.table.DefaultTableModel model = new javax.swing.table.DefaultTableModel(header, size){
                boolean[] canEdit = new boolean [] {
                    false, false, false, false, false, false
                };
                public boolean isCellEditable(int rowIndex, int columnIndex) {
                    return canEdit [columnIndex];
                }
            };
            jTable.setModel(model);
            jTable.getColumnModel().getColumn(0).setPreferredWidth(30);
            jTable.getColumnModel().getColumn(1).setPreferredWidth(200);
            jTable.getColumnModel().getColumn(2).setPreferredWidth(50);
            jTable.getColumnModel().getColumn(3).setPreferredWidth(50);
            jTable.getColumnModel().getColumn(4).setPreferredWidth(50);
            jTable.getColumnModel().getColumn(5).setPreferredWidth(50);
            //uzpildome lentele
            for (int i = 0; i < size; i++){
                entry temp = (entry)list.get(i);
                jTable.setValueAt(temp.getID(), i, 0); 
                jTable.setValueAt(temp.getList()+" "+temp.getName(), i, 1); 
                jTable.setValueAt(temp.getType(), i, 2); 
                jTable.setValueAt(temp.getLenght(), i, 3); 
                jTable.setValueAt(temp.getWeight(), i, 4); 
                jTable.setValueAt(temp.getTimesWatched(), i, 5);
            }      
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode SpecialshowImputedEntities!");
        }
    }
    
    /*issaugom i faila tris pagrindinius sarasus is pagrindinio lango*/
    public void saveAllData(){
        try {
            //issaugom visas turimas esybes i zinomus failus
            seenWriter = new FileWriter(fileDirektorija+seen);
            watchingWriter = new FileWriter(fileDirektorija+watching);
            knownWriter = new FileWriter(fileDirektorija+known);
            IDWriter = new FileWriter(fileDirektorija+ID);
            nameWriter = new FileWriter(fileDirektorija+names);
            seenWriter.flush();
            watchingWriter.flush();
            knownWriter.flush();
            IDWriter.flush();
            nameWriter.flush();
            saveList(seenList, seenWriter);
            saveList(watchingList, watchingWriter);
            saveList(knownList, knownWriter);
            makeFullList();
            makeIDList();
            saveList(IDList, IDWriter);
            makeNameList();
            saveList(nameList, nameWriter);
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode saveAllData!");
        }
    }
    
    /*sukuriam visu esanciu irasu sarasa paieskai*/
    private void makeFullList(){
        try {
            FullList.clear();
            entry temp;
            int ssize = seenList.size();
            int wsize = watchingList.size();
            int ksize = knownList.size();
            for (int i = 0; i < ssize; i++){
                temp = (entry)seenList.get(i);
                temp.setList("S");
                FullList.add(temp);
            }
            for (int i = 0; i < wsize; i++){
                temp = (entry)watchingList.get(i);
                temp.setList("W");
                FullList.add(temp);
            }
            for (int i = 0; i < ksize; i++){
                temp = (entry)knownList.get(i);
                temp.setList("K");
                FullList.add(temp);
            }
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode makeFullList!");
        }
    }
    
    /*perkopijuojam pilna sarasa ir ji issrusiuojam pagal id*/
    private void makeIDList(){
        try {
            IDList.clear();
            IDList.addAll(FullList);
            sortList(IDList);
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode makeIDList!");
        }
    }
    
    /*perkopijuojam pilna sarasa ir ji isrusiuojam pagal pavadinimus*/
    private void makeNameList(){
        try {
            nameList.clear();
            nameList.addAll(FullList);
            int size = nameList.size();
            boolean buvoPakitimu = true;
            entry entryx;
            entry entryxPlusOne;
            entry temp;
            while (buvoPakitimu == true){
                buvoPakitimu = false;
                for (int i = 0; i < size-1; i++){
                    entryx = (entry)nameList.get(i);
                    entryxPlusOne = (entry)nameList.get(i+1);
                    if (entryx.getName().charAt(0) > entryxPlusOne.getName().charAt(0)){
                        temp = entryxPlusOne;
                        entryxPlusOne = entryx;
                        entryx = temp;
                        //issaugom
                        nameList.set(i, entryx);
                        nameList.set(i+1, entryxPlusOne);
                        buvoPakitimu = true;
                    }
                }
            }
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode makeNameList!");
        }
    }
    
    /*issaugom konkretu sarasa i konkretu faila*/
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
                writer.write(eol);
            }
            //failo gale #
            writer.write('#');
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode saveList!");
        }
    }
    
    /*issaugom konkretu sarasa i konkretu faila ir pridedam prie 
     pavadinimu zymenis kas kuriam pagrindiniam sarasui priklauso*/
    private void SpecialsaveList(ArrayList list, FileWriter writer){
        try {
            //kiekvienam irasui - po eilute, gale kabliataskis ir end of line simbolis
            entry temp;
            for (int i = 0; i < list.size(); i++){
                //pasiimam entity
                temp = (entry)list.get(i);
                //id
                writer.write(temp.getID()+", ");
                //name
                writer.write(temp.getList()+" "+temp.getName()+", ");
                //type
                writer.write(temp.getType()+", ");
                //lenght
                writer.write(temp.getLenght()+", ");
                //weight
                writer.write(temp.getWeight()+", ");
                //times seen + kabliataskis, kad palaikytu times watched string reiksme
                writer.write(temp.getTimesWatched()+";");
                //end of line
                
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
    
    /*issaugom konkrecios paieskos rezultatus i faila*/
    public void saveSearchList(){
        try {
            searchWriter = new FileWriter(fileDirektorija+search);
            searchWriter.flush();
            SpecialsaveList(tempList, searchWriter);
            searchWriter.close();
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode saveSearchList!");
        }
    }
    
    /*surenkam visus ikeltu irasu id i bendra id sarasa tolimesniam naudojimui*/
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
    
    /*generuojam sekanti tinkama id naujam irasui*/
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
    
    /*kuriam nauja irasa ir uzpildom ji informacija*/
    public void makeNewEntry(){
        //gali buti bet kokio tipo new entry
        try {
            //generuojam ir pasitikrinam
            generateNextID();
            entry newEntry = new entry();
            //imam ID
            newEntry.setID(nextID);
            //imam name
            newEntry.setName(window1.getnameTextField().getText());
            //imam type
            newEntry.setType(window1.gettypeComboBox().getSelectedItem().toString());
            //imam lenght
            newEntry.setLenght(new Integer(window1.getlenghtTextField().getText()));
            //imam weight
            newEntry.setWeight(new Integer(window1.getweightComboBox().getSelectedItem().toString()));
            //imam times watched
            newEntry.setTimesWatched(new Integer(window1.gettimesTextField().getText()));
            //pasirenkam sarasa
            String list = window1.getlistComboBox().getSelectedItem().toString();
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
                showImputedEntities(knownList, window1.getKnownTable());
                showImputedEntities(reccomendedList, window1.getReccomendedTable());
            } else if (list.matches("Watching")){
                watchingList.add(newEntry);
                IdIndex.add(nextID);
                sortList(watchingList);
                sortIDList();
                showImputedEntities(watchingList, window1.getWatchingTable());
            } else if (list.matches("Seen")){
                seenList.add(newEntry);
                IdIndex.add(nextID);
                sortList(seenList);
                sortIDList();
                showImputedEntities(seenList, window1.getSeenTable());
            } else {
                System.out.println("Klaidinga galimybe pasirinkti sarasa!!!");
            }  
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode makeNewEntry!");
        }
    }
    
    /*rusiuojam konkretu sarasa pagal id*/
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
    
    /*rusiuojam id sarasa*/
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
    
    /*generuojam rekomenduojamu sarasa*/
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
    
    /*pazymim pasirinkta irasa kaip perziureta*/
    public int markAsSeen(){
        int n = 0;
        try {
            entry temp = new entry();
            entry entryToCopy = new entry();
            Integer Id = new Integer(window1.getIDTextField().getText());
            int size = watchingList.size();
            for (int i = 0; i < size; i++){
                temp = (entry)watchingList.get(i);
                if (temp.getID().equals(Id)){
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
                showImputedEntities(seenList, window1.getSeenTable());
                showImputedEntities(watchingList, window1.getWatchingTable());
            }
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode markAsSeen!");
        }
        return n;
        //n = 0 - nerastas elementas sarase; n = 1 - rastas
    }
    
    /*pazymim pasirinkta irasa kaip ziurima*/
    public int markAsWatching(){
        int n = 0;
        entry temp;
        entry entryToCopy = new entry();
        boolean isSeen = false;
        boolean isKnown = false;
        try {
            Integer Id = new Integer(window1.getIDTextField().getText());
            //galima imti tiek is known
            int size = knownList.size();
            for (int i = 0; i < size; i++){
                temp = (entry)knownList.get(i);
                if (temp.getID().equals(Id)){
                    entryToCopy = temp;
                    n = 1;
                    isKnown = true;
                }
            }
            //galima imti tiek is seen pakartotiniam ziurejimui
            size = seenList.size();
            for (int i = 0; i < size; i++){
                temp = (entry)seenList.get(i);
                if (temp.getID().equals(Id)){
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
                    showImputedEntities(watchingList, window1.getWatchingTable());
                    showImputedEntities(seenList, window1.getSeenTable());
                }
                //jei imam is zinomu saraso
                if (isKnown == true){
                    //isimam is zinomu saraso
                    knownList.remove(entryToCopy);
                    //visada perkuriam reccomended tik tam, kad garantuotai pasikeistu kai reikia
                    maxWeight = 1;
                    makeReccomendedList();
                    //perpiesiam sarasus
                    showImputedEntities(watchingList, window1.getWatchingTable());
                    showImputedEntities(knownList, window1.getKnownTable());
                    showImputedEntities(reccomendedList, window1.getReccomendedTable());
                }
            }
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode markAsWatching!");
        }
        return n;
        //n = 0 - nerastas elementas sarase; n = 1 - rastas
    }
    
    /*parodomas rekomenduojamo ziureti iraso id;
     id gali buti tik is reccomended saraso*/
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
            window1.getrandomLabel().setText(suggestedID.toString());
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode suggestRandom!");
        }
    }
    
    /*keiciam iraso duomenis; visus arba kai kuriuos*/
    public int changeEntry(boolean sameName, boolean sameLenght, boolean sameTimes){
        int n = 0;
        try {
            int size;
            int pozicija = 0;
            int ieskomas = new Integer(window1.getIDTextField().getText());
            int randamas;
            entry temp = new entry();
            entry newEntry = new entry();
            //ieskom iraso:
            //pasirenkam sarasa
            String list = window1.getlistComboBox().getSelectedItem().toString();
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
                        newEntry.setName(window1.getnameTextField().getText());
                    }
                    //tipas
                    newEntry.setType(window1.gettypeComboBox().getSelectedItem().toString());
                    //ilgis
                    if (sameLenght == true){
                       newEntry.setLenght(temp.getLenght());
                    } else {
                        newEntry.setLenght(new Integer(window1.getlenghtTextField().getText()));
                    }
                    //svoris
                    newEntry.setWeight((new Integer(window1.getweightComboBox().getSelectedItem().toString())));
                    //ziureta kartu
                    if (sameTimes == true){
                       newEntry.setTimesWatched(temp.getTimesWatched());
                    } else {
                        newEntry.setTimesWatched(new Integer(window1.gettimesTextField().getText()));
                    }
                    //sukeiciam info
                    knownList.set(pozicija, newEntry);
                    //visada perkuriam reccomended tik tam, kad garantuotai pasikeistu kai reikia
                    maxWeight = 1;
                    makeReccomendedList();
                    //parodom
                    showImputedEntities(knownList, window1.getKnownTable());
                    showImputedEntities(reccomendedList, window1.getReccomendedTable());       
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
                        newEntry.setName(window1.getnameTextField().getText());
                    }
                    //tipas
                    newEntry.setType(window1.gettypeComboBox().getSelectedItem().toString());
                    //ilgis
                    if (sameLenght == true){
                       newEntry.setLenght(temp.getLenght());
                    } else {
                        newEntry.setLenght(new Integer(window1.getlenghtTextField().getText()));
                    }
                    //svoris
                    newEntry.setWeight((new Integer(window1.getweightComboBox().getSelectedItem().toString())));
                    //ziureta kartu
                    if (sameTimes == true){
                       newEntry.setTimesWatched(temp.getTimesWatched());
                    } else {
                        newEntry.setTimesWatched(new Integer(window1.gettimesTextField().getText()));
                    }
                    //sukeiciam info
                    watchingList.set(pozicija, newEntry);
                    //parodom
                    showImputedEntities(watchingList, window1.getWatchingTable());
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
                        newEntry.setName(window1.getnameTextField().getText());
                    }
                    //tipas
                    newEntry.setType(window1.gettypeComboBox().getSelectedItem().toString());
                    //ilgis
                    if (sameLenght == true){
                       newEntry.setLenght(temp.getLenght());
                    } else {
                        newEntry.setLenght(new Integer(window1.getlenghtTextField().getText()));
                    }
                    //svoris
                    newEntry.setWeight((new Integer(window1.getweightComboBox().getSelectedItem().toString())));
                    //ziureta kartu
                    if (sameTimes == true){
                       newEntry.setTimesWatched(temp.getTimesWatched());
                    } else {
                        newEntry.setTimesWatched(new Integer(window1.gettimesTextField().getText()));
                    }
                    //sukeiciam info
                    seenList.set(pozicija, newEntry);
                    //parodom
                    showImputedEntities(seenList, window1.getSeenTable());
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
    
    /*istrinam irasa*/
    public int deleteEntry(){
        int n = 0;
        try {
            int size;
            int pozicija = 0;
            Integer ieskomas = new Integer(window1.getIDTextField().getText());
            int randamas;
            entry temp = new entry();
            //ieskom iraso:
            //pasirenkam sarasa
            String list = window1.getlistComboBox().getSelectedItem().toString();
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
                    showImputedEntities(knownList, window1.getKnownTable());
                    showImputedEntities(reccomendedList, window1.getReccomendedTable());       
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
                    showImputedEntities(watchingList, window1.getWatchingTable());
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
                    showImputedEntities(seenList, window1.getSeenTable());
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
    
    /*kai paspaudziam ant iraso watching lenteleje ikeliami to iraso duomenis i gretimus laukus;
     leidziama arba ne keisti duomenis*/
    public void fillFields(javax.swing.JTable jTable, javax.swing.JLabel jLabel, boolean enabled, ArrayList list, String title){
        try{
            //get the component
            int row = jTable.getSelectedRow();
            //jei kas nors pasirinkta
            if (row != -1 && row < list.size()){
                //set ID
                window1.getIDTextField().setEnabled(enabled);
                window1.getIDTextField().setText(jTable.getValueAt(row, 0).toString());
                //set name
                window1.getnameTextField().setEnabled(enabled);
                window1.getnameTextField().setText(jTable.getValueAt(row, 1).toString());
                //set type
                window1.gettypeComboBox().setEnabled(enabled);
                window1.gettypeComboBox().setSelectedItem(jTable.getValueAt(row, 2).toString());
                //set lenght
                window1.getlenghtTextField().setEnabled(enabled);
                window1.getlenghtTextField().setText(jTable.getValueAt(row, 3).toString());
                //set weight
                window1.getweightComboBox().setEnabled(enabled);
                window1.getweightComboBox().setSelectedItem(jTable.getValueAt(row, 4).toString());
                //set list
                window1.getlistComboBox().setEnabled(enabled);
                window1.getlistComboBox().setSelectedItem(title);
                //set times
                window1.gettimesTextField().setEnabled(enabled);
                window1.gettimesTextField().setText(jTable.getValueAt(row, 5).toString());
                String realName = jTable.getValueAt(row, 1).toString();
                icon = new ImageIcon(pictureDirektorija+realName+".jpg");
                jLabel.setIcon(icon);
            } 
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode fillFieldsWatching!");
            icon = new ImageIcon(pictureDirektorija+"error.JPG");
            jLabel.setIcon(icon);
        }
    }
    
    public void setConfig(String Config){
        config = Config;
    }
    
    /*sukuriam paieskos rezultata pagal duota id*/
    public void makeIDLists(String text){
        try{
            //isvalom sarasa
            tempList.clear();
            //sukuriam sarasa
            entry temp = new entry();
            Integer txt = new Integer(text);
            int size = FullList.size();
            for (int i = 0; i < size; i++){
                temp = (entry)FullList.get(i);
                if (temp.getID().equals(txt)){
                    tempList.add(temp);
                }
            }
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode makeIDLists!");
        }
    }
    
    /*sukuriam paieskos rezultata pagal duota pavadinima;
     jei tokio neranda, parodo visus is tos raides prasidedancius pavadinimus*/
    public void makeNameLists(String text){
        try{
            //isvalom sarasa
            tempList.clear();
            //sukuriam sarasa
            entry temp = new entry();
            boolean rasta = false;
            int pozicija = 0;
            int size = FullList.size();
            for (int i = 0; i < size; i++){
                temp = (entry)FullList.get(i);
                if (temp.getName().equals(text)){
                    rasta = true;
                    pozicija = i;
                }
            }
            //jei radom ko ieskojom
            if (rasta == true){
               tempList.add(FullList.get(pozicija));
            //jei neradom to pacio parodom prasidedancius is tos pacios raides
            } else {
                for (int i = 0; i < size; i++){
                    temp = (entry)FullList.get(i);
                    if (temp.getName().charAt(0) == text.charAt(0)){
                        tempList.add(temp);
                    }
                }
            }
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode makeNameLists!");
        }
    }
    
    /*sukuriam paieskos rezultata pagal duota tipa*/
    public void makeTypeLists(String text){
        try{
            //isvalom sarasa
            tempList.clear();
            //sukuriam sarasa
            entry temp = new entry();
            int size = FullList.size();
            for (int i = 0; i < size; i++){
                temp = (entry)FullList.get(i);
                if (temp.getType().equals(text)){
                    tempList.add(temp);
                }
            }
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode makeTypeLists!");
        }
    }
    
    /*sukuriam paieskos rezultata pagal duota svori*/
    public void makeWeightLists(String text){
        try{
            //isvalom sarasa
            tempList.clear();
            //sukuriam sarasa
            entry temp = new entry();
            Integer txt = new Integer(text);
            int size = FullList.size();
            for (int i = 0; i < size; i++){
                temp = (entry)FullList.get(i);
                if (temp.getWeight().equals(txt)){
                    tempList.add(temp);
                }
            }
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida metode makeWeightLists!");
        }
    }
    
}
