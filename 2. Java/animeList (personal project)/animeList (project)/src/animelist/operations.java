
package animelist;

import java.io.*;
import java.util.*;
import javax.swing.*;
import java.awt.*;

public class operations {

    private AnimeWindow mainWindow;
    private FileReader configReader;
    private FileReader knownReader;
    private FileReader seenReader;
    private FileReader watchingReader;
    private FileWriter configWriter;
    private FileWriter IDWriter;
    private FileWriter knownWriter;
    private FileWriter nameWriter;
    private FileWriter searchWriter;
    private FileWriter seenWriter;
    private FileWriter watchingWriter;
    private ArrayList FullList = new ArrayList();
    private ArrayList IdIndex = new ArrayList();
    private ArrayList IDList = new ArrayList();
    private ArrayList knownList = new ArrayList();
    private ArrayList nameList = new ArrayList();
    private ArrayList randomID;
    private ArrayList reccomendedList = new ArrayList();
    private ArrayList seenList = new ArrayList();
    private ArrayList tempList = new ArrayList();
    private ArrayList watchingList = new ArrayList();
    private entry copiedEntry;
    private entry currentEntry;
    private entry followingEntry;
    private entry newEntry;
    private entry temporaryEntry;
    private String[] header = new String [] {"ID", "Name", "Type", "Lenght", "Weight", "Times"};
    private String config;
    private String currentList;
    private String fileDirectory;
    private String ID;
    private String known;
    private String names;
    private String pictureDirectory;
    private String search;
    private String seen;
    private String temporaryString;
    private String watching;
    private char bufferToString[];
    private char charBufferArray[];
    private char eol[] = new char[2];
    private char firstCharacterOfTheLine[] = new char[3];
    private char IDBuffer[];
    private char IDBufferWithoutComma[];
    private char lenghtBuffer[];
    private char lenghtBufferWithoutComma[];
    private char nameBuffer[];
    private char nameBufferWithoutComma[];
    private char trashBuffer[];
    private char typeBuffer[];
    private char typeBufferWithoutComma[];
    private char timesSeenBuffer[];
    private char timesSeenBufferWithoutComma[];
    private char weightBuffer[];
    private char weightBufferWithoutComma[];
    private boolean changesOccured;
    private boolean entryIsChanged;
    private boolean entryIsDeleted;
    private boolean entryIsDroped;
    private boolean entryMarkedAsSeen;
    private boolean entryMarkedAsWatched;
    private boolean idIsGenerated;
    private boolean fromKnownList;
    private boolean fromSeenList;
    private boolean matchesFound;
    private boolean transitionIsNeeded;
    private double maxWeightRandom;
    private double randomBuffer[];
    private Integer currentEntryInteger;
    private Integer followingEntryInteger;
    private Integer Id;
    private Integer searchedID;
    private Integer suggestedID;
    private Integer temporaryEntryInteger;
    private Integer timesLaunched;
    private int currentWeight;
    private int i;
    private int j;
    private int listSize;
    private int maxWeight = 1;
    private int nextID = 1;
    private int position;
    private int readCharacters;
    private int row;

    /*the start of initialisation phase*/

    public operations(AnimeWindow MainWindow){
        try {
            mainWindow = MainWindow;
            eol[0] = (char)13;
            eol[1] = (char)10;
            config = mainWindow.getUtilTextField().getText();
            openConfigurationFile();
            inputDataFromList(seenReader, seenList);
            inputDataFromList(watchingReader, watchingList);
            inputDataFromList(knownReader, knownList);
            seenReader.close();
            watchingReader.close();
            knownReader.close();
            configReader.close();
            sortList(seenList);
            sortList(watchingList);
            sortList(knownList);
            makeReccomendedList();
            showEntities(seenList, mainWindow.getSeenTable(), false);
            showEntities(watchingList, mainWindow.getWatchingTable(), false);
            showEntities(knownList, mainWindow.getKnownTable(), false);
            showEntities(reccomendedList, mainWindow.getReccomendedTable(), false);
            calculateIdIndex();
            makeFullList();
            saveConfigurationFile();
        } catch (Exception e){
            System.out.println(e.toString()+" operations");
        }
    }

    private void openConfigurationFile(){
        try {
            configReader = new FileReader(config);
            charBufferArray = new char[100];
            trashBuffer = new char[5];
            readCharacters = 0;
            configReader.read(charBufferArray, readCharacters, 1);
            temporaryString = new String(scanningLines(':', false)); //read non vital message
            charBufferArray = new char[100];
            readCharacters = 0;
            configReader.read(trashBuffer, 1, 1); //drop an unnecessary space character
            configReader.read(charBufferArray, readCharacters, 1);
            timesLaunched = new Integer(new String(scanningLines(';', false)));
            temporaryString = new String(scanningLines(';', true)); //read non vital message
            fileDirectory = new String(scanningLines(';', true));
            seen = new String(scanningLines(';', true));
            seenReader = new FileReader(fileDirectory+seen);
            watching = new String(scanningLines(';', true));
            watchingReader = new FileReader(fileDirectory+watching);
            known = new String(scanningLines(';', true));
            knownReader = new FileReader(fileDirectory+known);
            ID = new String(scanningLines(';', true));
            names = new String(scanningLines(';', true));
            search = new String(scanningLines(';', true));
            pictureDirectory = new String(scanningLines(';', true));
        } catch (Exception e){
            System.out.println(e.toString()+" openConfigurationFile");
        }
    }

    private char[] scanningLines(char denominator, boolean skipEOL){
        try {
            if (skipEOL == true){
                skipEOL();
            }
            while (charBufferArray[readCharacters]!=denominator){
                readCharacters++;
                configReader.read(charBufferArray, readCharacters, 1);
            }
            bufferToString = new char[readCharacters];
            for (i = 0; i < readCharacters; i++){
                bufferToString[i] = charBufferArray[i];
            }
        } catch (Exception e){
            System.out.println(e.toString()+" scanningLines");
        }
        return bufferToString;
    }

    private void skipEOL(){
        try {
            charBufferArray = new char[100];
            readCharacters = 0;
            configReader.read(trashBuffer, 1, 2);
            configReader.read(charBufferArray, readCharacters, 1);
        } catch (Exception e){
            System.out.println(e.toString()+" skipEOL");
        }
    }

    private void inputDataFromList(FileReader reader, ArrayList list){
        //all data must be correct!!!
        try {
            readCharacters = 0;
            firstCharacterOfTheLine = new char[3];
            trashBuffer = new char[3];

            //read the very first character
            reader.read(firstCharacterOfTheLine, 0, 1);
            if (firstCharacterOfTheLine[0]!='#'){
                transitionIsNeeded = true;
            } else {
                transitionIsNeeded = false;
            }

            //read all lines
            while (transitionIsNeeded!=false){ //until all lines are read

                IDBuffer = new char[5];
                IDBuffer[0] = firstCharacterOfTheLine[0];
                readCharacters = 1;
                nameBuffer = new char[100];
                typeBuffer = new char[10];
                lenghtBuffer = new char[5];
                weightBuffer = new char[5];
                timesSeenBuffer = new char[5];

                IDBuffer = readAttributes(reader, IDBuffer, ',', true);
                IDBufferWithoutComma = readAttributesWithoutComma(reader, IDBuffer, IDBufferWithoutComma, false);
                nameBuffer = readAttributes(reader, nameBuffer, ',', false);
                nameBufferWithoutComma = readAttributesWithoutComma(reader, nameBuffer, nameBufferWithoutComma, false);
                typeBuffer = readAttributes(reader, typeBuffer, ',', false);
                typeBufferWithoutComma = readAttributesWithoutComma(reader, typeBuffer, typeBufferWithoutComma, false);
                lenghtBuffer = readAttributes(reader, lenghtBuffer, ',', false);
                lenghtBufferWithoutComma = readAttributesWithoutComma(reader, lenghtBuffer, lenghtBufferWithoutComma, false);
                weightBuffer = readAttributes(reader, weightBuffer, ',', false);
                weightBufferWithoutComma = readAttributesWithoutComma(reader, weightBuffer, weightBufferWithoutComma, false);
                timesSeenBuffer = readAttributes(reader, timesSeenBuffer, ';', false);
                timesSeenBufferWithoutComma = readAttributesWithoutComma(reader, timesSeenBuffer, timesSeenBufferWithoutComma, true);
                //drop EOL
                reader.read(trashBuffer, 1, 2);
                newEntry = new entry();
                newEntry.setID(new Integer(new String(IDBufferWithoutComma)));
                newEntry.setName(new String(nameBufferWithoutComma));
                newEntry.setType(new String(typeBufferWithoutComma));
                newEntry.setLenght(new Integer(new String(lenghtBufferWithoutComma)));
                newEntry.setWeight(new Integer(new String(weightBufferWithoutComma)));
                newEntry.setTimesWatched(new Integer(new String(timesSeenBufferWithoutComma)));
                list.add(newEntry);

                //checking the first symbol of the next line
                reader.read(firstCharacterOfTheLine, 0, 1);
                if (firstCharacterOfTheLine[0]!='#'){
                    transitionIsNeeded = true;
                } else {
                    transitionIsNeeded = false;
                }
            }
        } catch (Exception e){
            System.out.println(e.toString()+" inputDataFromList");
        }
    }

    private char[] readAttributes(FileReader reader, char[] attributeBuffer, char separator, boolean firstAttribute){
        try {
            if (firstAttribute == false){
                readCharacters = 0;
            }
            reader.read(attributeBuffer, readCharacters, 1);
            while (attributeBuffer[readCharacters]!=separator){
                readCharacters++;
                reader.read(attributeBuffer, readCharacters, 1);
            }
        } catch (Exception e){
            System.out.println(e.toString()+" readAttributes");
        }
        return attributeBuffer;
    }

    private char[] readAttributesWithoutComma(FileReader reader, char[] attributeBuffer, char[] attributeBufferWithoutComma, boolean lastAttribute){
        try {
            attributeBufferWithoutComma = new char[readCharacters];
            for (i = 0; i < readCharacters; i++){
                attributeBufferWithoutComma[i] = attributeBuffer[i];
            }
            if (lastAttribute == false){
                reader.read(trashBuffer, 1, 1);
            }
        } catch (Exception e){
            System.out.println(e.toString()+" readAttributesWithoutComma");
        }
        return attributeBufferWithoutComma;
    }

    private void sortList(ArrayList list){
        try {
            listSize = list.size();
            changesOccured = true;
            while (changesOccured == true){
                changesOccured = false;
                for (i = 0; i < listSize-1; i++){
                    currentEntry = (entry)list.get(i);
                    followingEntry = (entry)list.get(i+1);
                    if (currentEntry.getID() > followingEntry.getID()){
                        temporaryEntry = followingEntry;
                        followingEntry = currentEntry;
                        currentEntry = temporaryEntry;
                        list.set(i, currentEntry);
                        list.set(i+1, followingEntry);
                        changesOccured = true;
                    }
                }
            }
        } catch (Exception e){
            System.out.println(e.toString()+" sortList");
        }
    }

    private void makeReccomendedList(){
        try {
            currentWeight = maxWeight;
            listSize = knownList.size();
            changesOccured = false;
            for (i = 0; i < listSize; i++){
                temporaryEntry = (entry)knownList.get(i);
                if (temporaryEntry.getWeight() > currentWeight){
                    currentWeight = temporaryEntry.getWeight();
                    changesOccured = true;
                }
            }
            if (changesOccured == true){
                maxWeight = currentWeight;
            }
            reccomendedList.clear();
            for (j = 0; j < listSize; j++){
                temporaryEntry = (entry)knownList.get(j);
                if (temporaryEntry.getWeight() == maxWeight){
                    reccomendedList.add(temporaryEntry);
                }
            }

        } catch (Exception e){
            System.out.println(e.toString()+" makeReccomendedList");
        }
    }

    public void showEntities(ArrayList targetList, javax.swing.JTable outputTable, boolean nameNeeded){
        try {
            listSize = targetList.size();
            javax.swing.table.DefaultTableModel model = new javax.swing.table.DefaultTableModel(header, listSize){
                boolean[] canEdit = new boolean [] {
                    false, false, false, false, false, false
                };
                @Override
                public boolean isCellEditable(int rowIndex, int columnIndex) {
                    return canEdit [columnIndex];
                }
            };
            outputTable.setModel(model);
            outputTable.getColumnModel().getColumn(0).setPreferredWidth(30);
            outputTable.getColumnModel().getColumn(1).setPreferredWidth(200);
            outputTable.getColumnModel().getColumn(2).setPreferredWidth(50);
            outputTable.getColumnModel().getColumn(3).setPreferredWidth(50);
            outputTable.getColumnModel().getColumn(4).setPreferredWidth(50);
            outputTable.getColumnModel().getColumn(5).setPreferredWidth(50);
            for (i = 0; i < listSize; i++){
                temporaryEntry = (entry)targetList.get(i);
                outputTable.setValueAt(temporaryEntry.getID(), i, 0);
                if (nameNeeded == true){
                    outputTable.setValueAt(temporaryEntry.getList()+" "+temporaryEntry.getName(), i, 1);
                } else {
                    outputTable.setValueAt(temporaryEntry.getName(), i, 1);
                }
                outputTable.setValueAt(temporaryEntry.getType(), i, 2);
                outputTable.setValueAt(temporaryEntry.getLenght(), i, 3);
                outputTable.setValueAt(temporaryEntry.getWeight(), i, 4);
                outputTable.setValueAt(temporaryEntry.getTimesSeen(), i, 5);
            }
        } catch (Exception e){
            System.out.println(e.toString()+" showEntities");
        }
    }

    private void calculateIdIndex(){
        try {
            listSize = seenList.size();
            for (i = 0; i < listSize; i++){
                temporaryEntry = (entry)seenList.get(i);
                IdIndex.add(temporaryEntry.getID());
            }
            listSize = watchingList.size();
            for (i = 0; i < listSize; i++){
                temporaryEntry = (entry)watchingList.get(i);
                IdIndex.add(temporaryEntry.getID());
            }
            listSize = knownList.size();
            for (i = 0; i < listSize; i++){
                temporaryEntry = (entry)knownList.get(i);
                IdIndex.add(temporaryEntry.getID());
            }
            sortIDList();
        } catch (Exception e){
            System.out.println(e.toString()+" calculateIdIndex");
        }
    }

    private void makeFullList(){
        try {
            FullList.clear();
            listSize = seenList.size();
            for (i = 0; i < listSize; i++){
                temporaryEntry = (entry)seenList.get(i);
                temporaryEntry.setList("S");
                FullList.add(temporaryEntry);
            }
            listSize = watchingList.size();
            for (i = 0; i < listSize; i++){
                temporaryEntry = (entry)watchingList.get(i);
                temporaryEntry.setList("W");
                FullList.add(temporaryEntry);
            }
            listSize = knownList.size();
            for (i = 0; i < listSize; i++){
                temporaryEntry = (entry)knownList.get(i);
                temporaryEntry.setList("K");
                FullList.add(temporaryEntry);
            }
        } catch (Exception e){
            System.out.println(e.toString()+" makeFullList");
        }
    }

    private void sortIDList(){
        try {
            listSize = IdIndex.size();
            changesOccured = true;
            while (changesOccured == true){
                changesOccured = false;
                for (i = 0; i < listSize-1; i++){
                    currentEntryInteger = (Integer)IdIndex.get(i);
                    followingEntryInteger = (Integer)IdIndex.get(i+1);
                    if (currentEntryInteger > followingEntryInteger){
                        temporaryEntryInteger = followingEntryInteger;
                        followingEntryInteger = currentEntryInteger;
                        currentEntryInteger = temporaryEntryInteger;
                        IdIndex.set(i, currentEntryInteger);
                        IdIndex.set(i+1, followingEntryInteger);
                        changesOccured = true;
                    }
                }
            }
        } catch (Exception e){
            System.out.println(e.toString()+" sortIDList");
        }
    }

    private void saveConfigurationFile(){
        try {
            configWriter = new FileWriter(config);
            configWriter.write("times launched: "+(timesLaunched+1)+";");
            configWriter.write(eol);
            configWriter.write("last launched: "+(new Date())+";");
            configWriter.write(eol);
            configWriter.write(fileDirectory+";");
            configWriter.write(eol);
            configWriter.write(seen+";");
            configWriter.write(eol);
            configWriter.write(watching+";");
            configWriter.write(eol);
            configWriter.write(known+";");
            configWriter.write(eol);
            configWriter.write(ID+";");
            configWriter.write(eol);
            configWriter.write(names+";");
            configWriter.write(eol);
            configWriter.write(search+";");
            configWriter.write(eol);
            configWriter.write(pictureDirectory+";");
            configWriter.write(eol);
            configWriter.flush();
            configWriter.close();
        } catch (Exception e){
            System.out.println(e.toString()+" saveConfigurationFile");
        }
    }

    /*the end of initialisation phase*/

    /*the relative start of operation phase*/

    public boolean deleteEntry(){
        entryIsDeleted = false;
        try {
            searchedID = new Integer(mainWindow.getIDTextField().getText());
            temporaryEntry = new entry();
            currentList = mainWindow.getlistComboBox().getSelectedItem().toString();
            if (currentList.matches("Known")){
                listSize = knownList.size();
            } else if (currentList.matches("Watching")){
                listSize = watchingList.size();
            } else if (currentList.matches("Seen")){
                listSize = seenList.size();
            }
            for (i = 0; i < listSize; i++){
                if (currentList.matches("Known")){
                    temporaryEntry = (entry)knownList.get(i);
                } else if (currentList.matches("Watching")){
                    temporaryEntry = (entry)watchingList.get(i);
                } else if (currentList.matches("Seen")){
                    temporaryEntry = (entry)seenList.get(i);
                }
                if (temporaryEntry.getID().equals(searchedID)){
                    position = i;
                    entryIsDeleted = true;
                }
            }
            if (entryIsDeleted == true){
                IdIndex.remove(searchedID);
                if (currentList.matches("Known")){
                    knownList.remove(position);
                    maxWeight = 1;
                    makeReccomendedList();
                } else if (currentList.matches("Watching")){
                    watchingList.remove(position);
                } else if (currentList.matches("Seen")){
                    seenList.remove(position);
                }
                if (currentList.matches("Known")){
                    showEntities(knownList, mainWindow.getKnownTable(), false);
                    showEntities(reccomendedList, mainWindow.getReccomendedTable(), false);
                } else if (currentList.matches("Watching")){
                    showEntities(watchingList, mainWindow.getWatchingTable(), false);
                } else if (currentList.matches("Seen")){
                    showEntities(seenList, mainWindow.getSeenTable(), false);
                } else {
                    JOptionPane.showConfirmDialog((Component)null, "Attempt to delete failed!", "alert", JOptionPane.DEFAULT_OPTION);
                }
            }
        } catch (Exception e){
            System.out.println(e.toString()+" deleteEntry");
            JOptionPane.showConfirmDialog((Component)null, "Action failed!", "alert", JOptionPane.DEFAULT_OPTION);
        }
        return entryIsDeleted;
    }

    public boolean dropEntry(){
        entryIsDroped = false;
        try {
            searchedID = new Integer(mainWindow.getIDTextField().getText());
            temporaryEntry = new entry();
            copiedEntry = new entry();
            currentList = mainWindow.getlistComboBox().getSelectedItem().toString();
            listSize = watchingList.size();
            for (i = 0; i < listSize; i++){
                temporaryEntry = (entry)watchingList.get(i);
                if (temporaryEntry.getID().equals(searchedID)){
                    copiedEntry = temporaryEntry;
                    entryIsDroped = true;
                }
            }
            if (entryIsDroped == true){
                copiedEntry = (entry)watchingList.get(position);
                watchingList.remove(copiedEntry);
                showEntities(watchingList, mainWindow.getWatchingTable(), false);
                if (copiedEntry.getTimesSeen()>0){
                    seenList.add(copiedEntry);
                    sortList(seenList);
                    showEntities(seenList, mainWindow.getSeenTable(), false);
                } else {
                    knownList.add(copiedEntry);
                    maxWeight = 1;
                    makeReccomendedList();
                    sortList(knownList);
                    showEntities(knownList, mainWindow.getKnownTable(), false);
                    showEntities(reccomendedList, mainWindow.getReccomendedTable(), false);
                }
            }
        } catch (Exception e){
            System.out.println(e.toString()+" deleteEntry");
            JOptionPane.showConfirmDialog((Component)null, "Action failed!", "alert", JOptionPane.DEFAULT_OPTION);
        }
        return entryIsDroped;
    }

    public boolean changeEntry(boolean sameName, boolean sameLenght, boolean sameTimes){
        entryIsChanged = false;
        try {
            searchedID = new Integer(mainWindow.getIDTextField().getText());
            temporaryEntry = new entry();
            newEntry = new entry();
            currentList = mainWindow.getlistComboBox().getSelectedItem().toString();
            if (currentList.matches("Known")){
                listSize = knownList.size();
            } else if (currentList.matches("Watching")){
                listSize = watchingList.size();
            } else if (currentList.matches("Seen")){
                listSize = seenList.size();
            }
            for (i = 0; i < listSize; i++){
                System.out.println("i "+i);
                if (currentList.matches("Known")){
                    temporaryEntry = (entry)knownList.get(i);
                } else if (currentList.matches("Watching")){
                    temporaryEntry = (entry)watchingList.get(i);
                } else if (currentList.matches("Seen")){
                    temporaryEntry = (entry)seenList.get(i);
                }
                if (temporaryEntry.getID().equals(searchedID)){
                    position = i;
                    entryIsChanged = true;
                }
            }
            if (entryIsChanged == true){
                if (currentList.matches("Known")){
                    temporaryEntry = (entry)knownList.get(position);
                } else if (currentList.matches("Watching")){
                    temporaryEntry = (entry)watchingList.get(position);
                } else if (currentList.matches("Seen")){
                    temporaryEntry = (entry)seenList.get(position);
                }
                newEntry.setID(temporaryEntry.getID());
                if (sameName == true){
                    newEntry.setName(temporaryEntry.getName());
                } else {
                    newEntry.setName(mainWindow.getnameTextField().getText());
                }
                newEntry.setType(mainWindow.gettypeComboBox().getSelectedItem().toString());
                if (sameLenght == true){
                    newEntry.setLenght(temporaryEntry.getLenght());
                } else {
                    newEntry.setLenght(new Integer(mainWindow.getlenghtTextField().getText()));
                }
                newEntry.setWeight((new Integer(mainWindow.getweightComboBox().getSelectedItem().toString())));
                if (sameTimes == true){
                    newEntry.setTimesWatched(temporaryEntry.getTimesSeen());
                } else {
                    newEntry.setTimesWatched(new Integer(mainWindow.gettimesTextField().getText()));
                }
                if (currentList.matches("Known")){
                    knownList.set(position, newEntry);
                    maxWeight = 1;
                    makeReccomendedList();
                    showEntities(knownList, mainWindow.getKnownTable(), false);
                    showEntities(reccomendedList, mainWindow.getReccomendedTable(), false);
                } else if (currentList.matches("Watching")){
                    watchingList.set(position, newEntry);
                    showEntities(watchingList, mainWindow.getWatchingTable(), false);
                } else if (currentList.matches("Seen")){
                    seenList.set(position, newEntry);
                    showEntities(seenList, mainWindow.getSeenTable(), false);
                } else {
                    JOptionPane.showConfirmDialog((Component)null, "Attempt to change failed!", "alert", JOptionPane.DEFAULT_OPTION);
                }
            }
        } catch (Exception e){
            System.out.println(e.toString());
            JOptionPane.showConfirmDialog((Component)null, "Action failed!", "alert", JOptionPane.DEFAULT_OPTION);
        }
        return entryIsChanged;
    }

    public boolean markAsSeen(){
        entryMarkedAsSeen = false;
        try {
            temporaryEntry = new entry();
            copiedEntry = new entry();
            Id = new Integer(mainWindow.getIDTextField().getText());
            listSize = watchingList.size();
            for (i = 0; i < listSize; i++){
                temporaryEntry = (entry)watchingList.get(i);
                if (temporaryEntry.getID().equals(Id)){
                    copiedEntry = temporaryEntry;
                    entryMarkedAsSeen = true;
                }
            }
            if (entryMarkedAsSeen == true){
                copiedEntry.setTimesWatched(copiedEntry.getTimesSeen()+1);
                seenList.add(copiedEntry);
                sortList(seenList);
                watchingList.remove(copiedEntry);
                showEntities(seenList, mainWindow.getSeenTable(), false);
                showEntities(watchingList, mainWindow.getWatchingTable(), false);
            }
        } catch (Exception e){
            System.out.println(e.toString()+" markAsSeen");
            JOptionPane.showConfirmDialog((Component)null, "Action failed!", "alert", JOptionPane.DEFAULT_OPTION);
        }
        return entryMarkedAsSeen;
    }

    public boolean markAsWatching(){
        entryMarkedAsWatched = false;
        copiedEntry = new entry();
        fromSeenList = false;
        fromKnownList = false;
        try {
            Id = new Integer(mainWindow.getIDTextField().getText());
            listSize = knownList.size();
            for (i = 0; i < listSize; i++){
                temporaryEntry = (entry)knownList.get(i);
                if (temporaryEntry.getID().equals(Id)){
                    copiedEntry = temporaryEntry;
                    entryMarkedAsWatched = true;
                    fromKnownList = true;
                }
            }
            listSize = seenList.size();
            for (i = 0; i < listSize; i++){
                temporaryEntry = (entry)seenList.get(i);
                if (temporaryEntry.getID().equals(Id)){
                    copiedEntry = temporaryEntry;
                    entryMarkedAsWatched = true;
                    fromSeenList = true;
                }
            }
            if (entryMarkedAsWatched == true){
                watchingList.add(copiedEntry);
                sortList(watchingList);
                if (fromSeenList == true){
                    seenList.remove(copiedEntry);
                    showEntities(watchingList, mainWindow.getWatchingTable(), false);
                    showEntities(seenList, mainWindow.getSeenTable(), false);
                }
                if (fromKnownList == true){
                    knownList.remove(copiedEntry);
                    maxWeight = 1;
                    makeReccomendedList();
                    showEntities(watchingList, mainWindow.getWatchingTable(), false);
                    showEntities(knownList, mainWindow.getKnownTable(), false);
                    showEntities(reccomendedList, mainWindow.getReccomendedTable(), false);
                }
            }
        } catch (Exception e){
            System.out.println(e.toString()+" markAsWatching");
            JOptionPane.showConfirmDialog((Component)null, "Action failed!", "alert", JOptionPane.DEFAULT_OPTION);
        }
        return entryMarkedAsWatched;
    }

    public void makeNewEntry(){
        try {
            generateNextID();
            newEntry = new entry();
            newEntry.setID(nextID);
            newEntry.setName(mainWindow.getnameTextField().getText());
            newEntry.setType(mainWindow.gettypeComboBox().getSelectedItem().toString());
            newEntry.setLenght(new Integer(mainWindow.getlenghtTextField().getText()));
            newEntry.setWeight(new Integer(mainWindow.getweightComboBox().getSelectedItem().toString()));
            newEntry.setTimesWatched(new Integer(mainWindow.gettimesTextField().getText()));
            currentList = mainWindow.getlistComboBox().getSelectedItem().toString();
            if (currentList.matches("Known")){
                knownList.add(newEntry);
                IdIndex.add(nextID);
                sortList(knownList);
                sortIDList();
                maxWeight = 1;
                makeReccomendedList();
                showEntities(knownList, mainWindow.getKnownTable(), false);
                showEntities(reccomendedList, mainWindow.getReccomendedTable(), false);
            } else {
                JOptionPane.showConfirmDialog((Component)null, "Attempt to make new entry failed!", "alert", JOptionPane.DEFAULT_OPTION);
            }
        } catch (Exception e){
            System.out.println(e.toString()+" makeNewEntry");
            JOptionPane.showConfirmDialog((Component)null, "Action failed!", "alert", JOptionPane.DEFAULT_OPTION);
        }
    }

    private void generateNextID(){
        try {
            idIsGenerated = false;
            i = 1;
            j = 0;
            listSize = IdIndex.size();
            while (idIsGenerated!=true){
                idIsGenerated = false;
                if (j < listSize){
                    Id = (Integer)IdIndex.get(j);
                    if (i != Id){
                        idIsGenerated = true;
                        nextID = i;
                    }
                    j++;
                } else  if (i > (Integer)IdIndex.get(listSize-1)){
                    idIsGenerated = true;
                    nextID = i;
                }
                i++;
            }
        } catch (Exception e){
            System.out.println(e.toString()+" generateNextID");
        }
    }

    public Integer suggestRandom(){
        suggestedID = 0;
        try {
            position = 1;
            maxWeightRandom = 0.0;
            randomID = new ArrayList();
            listSize = reccomendedList.size();
            for (i = 0; i < listSize; i++){
                temporaryEntry = (entry)reccomendedList.get(i);
                randomID.add(temporaryEntry.getID());
            }
            randomBuffer = new double[listSize];
            for (i = 0; i < listSize; i++){
                randomBuffer[i] = Math.random();
            }
            for (i = 0; i < listSize; i++){
                if (randomBuffer[i] > maxWeightRandom){
                    maxWeightRandom = randomBuffer[i];
                    position = i;
                }
            }
            suggestedID = (Integer)randomID.get(position);
            mainWindow.getrandomLabel().setText(suggestedID.toString());
        } catch (Exception e){
            System.out.println(e.toString()+" suggestRandom");
            JOptionPane.showConfirmDialog((Component)null, "Action failed!", "alert", JOptionPane.DEFAULT_OPTION);
        }
        return suggestedID;
    }

    public void fillFields(javax.swing.JTable currentTable, javax.swing.JLabel currentLabel, boolean isEnabled, ArrayList targetList, String title){
        try{
            row = currentTable.getSelectedRow();
            if (row != -1 && row < targetList.size()){
                mainWindow.getIDTextField().setEnabled(isEnabled);
                mainWindow.getIDTextField().setText(currentTable.getValueAt(row, 0).toString());
                mainWindow.getnameTextField().setEnabled(isEnabled);
                mainWindow.getnameTextField().setText(currentTable.getValueAt(row, 1).toString());
                mainWindow.gettypeComboBox().setEnabled(isEnabled);
                mainWindow.gettypeComboBox().setSelectedItem(currentTable.getValueAt(row, 2).toString());
                mainWindow.getlenghtTextField().setEnabled(isEnabled);
                mainWindow.getlenghtTextField().setText(currentTable.getValueAt(row, 3).toString());
                mainWindow.getweightComboBox().setEnabled(isEnabled);
                mainWindow.getweightComboBox().setSelectedItem(currentTable.getValueAt(row, 4).toString());
                mainWindow.getlistComboBox().setEnabled(isEnabled);
                mainWindow.getlistComboBox().setSelectedItem(title);
                mainWindow.gettimesTextField().setEnabled(isEnabled);
                mainWindow.gettimesTextField().setText(currentTable.getValueAt(row, 5).toString());
                currentLabel.setIcon(new ImageIcon(pictureDirectory+currentTable.getValueAt(row, 1).toString()+".jpg"));
            }
        } catch (Exception e){
            System.out.println(e.toString()+" fillFields");
            currentLabel.setIcon(new ImageIcon(pictureDirectory+"error.JPG"));
        }
    }

    /*the relative end of operation phase*/
             
    public void saveSearchList(){
        try {
            searchWriter = new FileWriter(fileDirectory+search);
            searchWriter.flush();
            saveList(tempList, searchWriter, true);
            searchWriter.close();
        } catch (Exception e){
            System.out.println(e.toString()+" saveSearchList");
            JOptionPane.showConfirmDialog((Component)null, "Failed to save search result!", "alert", JOptionPane.DEFAULT_OPTION);
        }
    }
        
    public void showSearchResults(String searchText, String typeOfSearch){
        try {
            tempList.clear();
            temporaryEntry = new entry();
            listSize = FullList.size();
            if (typeOfSearch.equals("Name")){
                matchesFound = false;
                position = 0;
            }
            for (i = 0; i < listSize; i++){
                temporaryEntry = (entry)FullList.get(i);
                if (typeOfSearch.equals("ID")){
                    if (temporaryEntry.getID().equals(new Integer(searchText))){
                        tempList.add(temporaryEntry);
                    }
                } else if (typeOfSearch.equals("Type")){
                    if (temporaryEntry.getType().equals(searchText)){
                        tempList.add(temporaryEntry);
                    }
                } else if (typeOfSearch.equals("Weight")){
                    if (temporaryEntry.getWeight().equals(new Integer(searchText))){
                        tempList.add(temporaryEntry);
                    }
                } else if (typeOfSearch.equals("Name")){
                    if (temporaryEntry.getName().equals(searchText)){
                        matchesFound = true;
                        position = i;
                    }
                } else if (typeOfSearch.equals("Lenght")){
                    if (temporaryEntry.getLenght().equals(new Integer(searchText))){
                        tempList.add(temporaryEntry);
                    }
                } else if (typeOfSearch.equals("Times")){
                    if (temporaryEntry.getTimesSeen().equals(new Integer(searchText))){
                        tempList.add(temporaryEntry);
                    }
                }
                if (typeOfSearch.equals("Name")){
                    if (matchesFound == true){
                       tempList.add(FullList.get(position));
                    } else {
                        for (i = 0; i < listSize; i++){
                            temporaryEntry = (entry)FullList.get(i);
                            if (temporaryEntry.getName().charAt(0) == searchText.charAt(0)){
                                tempList.add(temporaryEntry);
                            }
                        }
                    }
                }
            }
        } catch (Exception e){
            System.out.println(e.toString()+" showSearchResults");
            JOptionPane.showConfirmDialog((Component)null, "Search failed!", "alert", JOptionPane.DEFAULT_OPTION);
        }
    }

    /*the start of closing phase*/

    public void saveAllData(){
        try {
            seenWriter = new FileWriter(fileDirectory+seen);
            watchingWriter = new FileWriter(fileDirectory+watching);
            knownWriter = new FileWriter(fileDirectory+known);
            IDWriter = new FileWriter(fileDirectory+ID);
            nameWriter = new FileWriter(fileDirectory+names);
            seenWriter.flush();
            watchingWriter.flush();
            knownWriter.flush();
            IDWriter.flush();
            nameWriter.flush();
            saveList(seenList, seenWriter, false);
            saveList(watchingList, watchingWriter, false);
            saveList(knownList, knownWriter, false);
            makeFullList();
            makeIDList();
            saveList(IDList, IDWriter, false);
            makeNameList();
            saveList(nameList, nameWriter, false);
        } catch (Exception e){
            System.out.println(e.toString()+" saveAllData");
        }
    }

    private void saveList(ArrayList targetList, FileWriter writer, boolean markingListsNeeded){
        try {
            for (i = 0; i < targetList.size(); i++){
                temporaryEntry = (entry)targetList.get(i);
                writer.write(temporaryEntry.getID()+", ");
                if (markingListsNeeded == true){
                    writer.write(temporaryEntry.getList()+" "+temporaryEntry.getName()+", ");
                } else {
                    writer.write(temporaryEntry.getName()+", ");
                }
                writer.write(temporaryEntry.getType()+", ");
                writer.write(temporaryEntry.getLenght()+", ");
                writer.write(temporaryEntry.getWeight()+", ");
                writer.write(temporaryEntry.getTimesSeen()+";");
                writer.write(eol);
            }
            writer.write('#');
        } catch (Exception e){
            System.out.println(e.toString()+" saveList");
        }
    }

    private void makeIDList(){
        try {
            IDList.clear();
            IDList.addAll(FullList);
            sortList(IDList);
        } catch (Exception e){
            System.out.println(e.toString()+" makeIDList");
        }
    }

    private void makeNameList(){
        try {
            nameList.clear();
            nameList.addAll(FullList);
            listSize = nameList.size();
            changesOccured = true;
            while (changesOccured == true){
                changesOccured = false;
                for (i = 0; i < listSize-1; i++){
                    currentEntry = (entry)nameList.get(i);
                    followingEntry = (entry)nameList.get(i+1);
                    if (currentEntry.getName().charAt(0) > followingEntry.getName().charAt(0)){
                        temporaryEntry = followingEntry;
                        followingEntry = currentEntry;
                        currentEntry = temporaryEntry;
                        nameList.set(i, currentEntry);
                        nameList.set(i+1, followingEntry);
                        changesOccured = true;
                    }
                }
            }
        } catch (Exception e){
            System.out.println(e.toString()+" makeNameList");
        }
    }

    public void closeWriters(){
        try {
            seenWriter.close();
            watchingWriter.close();
            knownWriter.close();
            IDWriter.close();
            nameWriter.close();
        } catch (Exception e){
            System.out.println(e.toString()+" closeWriters");
        }
    }

    /*the end of closing phase*/

    /*a supporting section of getter methods*/

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

    public String getPictureDirectory(){
        return pictureDirectory;
    }

    public void setConfig(String Config){
        config = Config;
    }

}