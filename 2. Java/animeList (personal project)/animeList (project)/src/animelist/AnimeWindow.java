
package animelist;

import java.awt.*;
import javax.swing.*;
import java.io.*;

public class AnimeWindow extends javax.swing.JFrame {

    private operations operationsObject;
    private JFileChooser fileChooser;
    private boolean sessionStarted = false;
    private boolean sameNameFound;
    private boolean sameLenghtFound;
    private boolean sameTimesFound;
    private boolean sameIDFound;
    private boolean wrongNameFound;
    private boolean wrongLenghtFound;
    private boolean wrongTimesFound;
    private boolean wrongIDFound;
    private int retunChosenValue;
    private int returnValue;
    private int size;
    private int i;
    private File file;
    private Lists lists;
    private Search search;
    
    public AnimeWindow() {
        initComponents();
        ExitButton.setEnabled(false);
        SaveButton.setEnabled(false);
        addButton.setEnabled(false);
        changeButton.setEnabled(false);
        deleteButton.setEnabled(false);
        finishedButton.setEnabled(false);
        randomButton.setEnabled(false);
        watchingButton.setEnabled(false);
        ShowListsButton.setEnabled(false);
        SearchButton.setEnabled(false);
        dropButton.setEnabled(false);
        listComboBox.setEnabled(false);
        typeComboBox.setEnabled(false);
        weightComboBox.setEnabled(false);
        lenghtTextField.setEnabled(false);
        nameTextField.setEnabled(false);
        timesTextField.setEnabled(false);
        IDTextField.setEnabled(false);
        fileChooser = new JFileChooser("d:/");
    }
    
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        MainPanel = new javax.swing.JPanel();
        MainTabbedPane = new javax.swing.JTabbedPane();
        SeenScrollPane = new javax.swing.JScrollPane();
        SeenTable = new javax.swing.JTable();
        WatchingScrollPane = new javax.swing.JScrollPane();
        WatchingTable = new javax.swing.JTable();
        KnownScrollPane = new javax.swing.JScrollPane();
        KnownTable = new javax.swing.JTable();
        ReccomendedScrollPane = new javax.swing.JScrollPane();
        ReccomendedTable = new javax.swing.JTable();
        DataPanel = new javax.swing.JPanel();
        nameLabel = new javax.swing.JLabel();
        typeLabel = new javax.swing.JLabel();
        lenghtLabel = new javax.swing.JLabel();
        weightLabel = new javax.swing.JLabel();
        listLabel = new javax.swing.JLabel();
        timesLabel = new javax.swing.JLabel();
        nameTextField = new javax.swing.JTextField();
        lenghtTextField = new javax.swing.JTextField();
        timesTextField = new javax.swing.JTextField();
        typeComboBox = new javax.swing.JComboBox();
        weightComboBox = new javax.swing.JComboBox();
        listComboBox = new javax.swing.JComboBox();
        IDLabel = new javax.swing.JLabel();
        IDTextField = new javax.swing.JTextField();
        attributeLabel = new javax.swing.JLabel();
        UtilPanel = new javax.swing.JPanel();
        UtilTextField = new javax.swing.JTextField();
        UtilButton = new javax.swing.JButton();
        SaveButton = new javax.swing.JButton();
        ExitButton = new javax.swing.JButton();
        MenuIsFailoButton = new javax.swing.JButton();
        optionLabel = new javax.swing.JLabel();
        WorkPanel = new javax.swing.JPanel();
        randomLabel = new javax.swing.JLabel();
        changeButton = new javax.swing.JButton();
        finishedButton = new javax.swing.JButton();
        watchingButton = new javax.swing.JButton();
        addButton = new javax.swing.JButton();
        randomButton = new javax.swing.JButton();
        deleteButton = new javax.swing.JButton();
        functionLabel = new javax.swing.JLabel();
        dropButton = new javax.swing.JButton();
        SearchButton = new javax.swing.JButton();
        ShowListsButton = new javax.swing.JButton();
        bannerLabel = new javax.swing.JLabel();
        imageScrollPane = new javax.swing.JScrollPane();
        imageLabel = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Main window");
        setName("Main Window"); // NOI18N

        MainPanel.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));

        SeenTable.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null}
            },
            new String [] {
                "ID", "Name", "Type", "Lenght", "Weight", "Times"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        SeenTable.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                SeenPropertyInput(evt);
            }
        });
        SeenTable.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                SeenPropertyImputFromButtonPressed(evt);
            }
            public void keyReleased(java.awt.event.KeyEvent evt) {
                SeenPropertyImputFromButtonPressed(evt);
            }
        });
        SeenScrollPane.setViewportView(SeenTable);
        SeenTable.getColumnModel().getColumn(0).setPreferredWidth(30);
        SeenTable.getColumnModel().getColumn(1).setPreferredWidth(200);
        SeenTable.getColumnModel().getColumn(2).setPreferredWidth(50);
        SeenTable.getColumnModel().getColumn(3).setPreferredWidth(50);
        SeenTable.getColumnModel().getColumn(4).setPreferredWidth(50);
        SeenTable.getColumnModel().getColumn(5).setPreferredWidth(50);

        MainTabbedPane.addTab("Seen", SeenScrollPane);

        WatchingTable.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null}
            },
            new String [] {
                "ID", "Name", "Type", "Lenght", "Weight", "Times"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                true, false, true, true, true, true
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        WatchingTable.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                WatchingPropertyInput(evt);
            }
        });
        WatchingTable.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                WatchingPropertyImputFromButtonPressed(evt);
            }
            public void keyReleased(java.awt.event.KeyEvent evt) {
                WatchingPropertyImputFromButtonPressed(evt);
            }
        });
        WatchingScrollPane.setViewportView(WatchingTable);
        WatchingTable.getColumnModel().getColumn(0).setPreferredWidth(30);
        WatchingTable.getColumnModel().getColumn(1).setPreferredWidth(200);
        WatchingTable.getColumnModel().getColumn(2).setPreferredWidth(50);
        WatchingTable.getColumnModel().getColumn(3).setPreferredWidth(50);
        WatchingTable.getColumnModel().getColumn(4).setPreferredWidth(50);
        WatchingTable.getColumnModel().getColumn(5).setPreferredWidth(50);

        MainTabbedPane.addTab("Watching", WatchingScrollPane);

        KnownTable.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null}
            },
            new String [] {
                "ID", "Name", "Type", "Lenght", "Weight", "Times"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        KnownTable.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                KnownPropertyInput(evt);
            }
        });
        KnownTable.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                KnownPropertyImputFromButtonPressed(evt);
            }
            public void keyReleased(java.awt.event.KeyEvent evt) {
                KnownPropertyImputFromButtonPressed(evt);
            }
        });
        KnownScrollPane.setViewportView(KnownTable);
        KnownTable.getColumnModel().getColumn(0).setPreferredWidth(30);
        KnownTable.getColumnModel().getColumn(1).setPreferredWidth(200);
        KnownTable.getColumnModel().getColumn(2).setPreferredWidth(50);
        KnownTable.getColumnModel().getColumn(3).setPreferredWidth(50);
        KnownTable.getColumnModel().getColumn(4).setPreferredWidth(50);
        KnownTable.getColumnModel().getColumn(5).setPreferredWidth(50);

        MainTabbedPane.addTab("Known", KnownScrollPane);

        ReccomendedTable.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null}
            },
            new String [] {
                "ID", "Name", "Type", "Lenght", "Weight", "Times"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        ReccomendedTable.setColumnSelectionAllowed(true);
        ReccomendedTable.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                ReccomendedPropertyInput(evt);
            }
        });
        ReccomendedTable.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                ReccomendedgPropertyImputFromButtonPressed(evt);
            }
            public void keyReleased(java.awt.event.KeyEvent evt) {
                ReccomendedgPropertyImputFromButtonPressed(evt);
            }
        });
        ReccomendedScrollPane.setViewportView(ReccomendedTable);
        ReccomendedTable.getColumnModel().getSelectionModel().setSelectionMode(javax.swing.ListSelectionModel.SINGLE_SELECTION);
        ReccomendedTable.getColumnModel().getColumn(0).setPreferredWidth(30);
        ReccomendedTable.getColumnModel().getColumn(1).setPreferredWidth(200);
        ReccomendedTable.getColumnModel().getColumn(2).setPreferredWidth(50);
        ReccomendedTable.getColumnModel().getColumn(3).setPreferredWidth(50);
        ReccomendedTable.getColumnModel().getColumn(4).setPreferredWidth(50);
        ReccomendedTable.getColumnModel().getColumn(5).setPreferredWidth(50);

        MainTabbedPane.addTab("Reccomended", ReccomendedScrollPane);

        org.jdesktop.layout.GroupLayout MainPanelLayout = new org.jdesktop.layout.GroupLayout(MainPanel);
        MainPanel.setLayout(MainPanelLayout);
        MainPanelLayout.setHorizontalGroup(
            MainPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(MainPanelLayout.createSequentialGroup()
                .addContainerGap()
                .add(MainTabbedPane, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 469, Short.MAX_VALUE)
                .addContainerGap())
        );
        MainPanelLayout.setVerticalGroup(
            MainPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(MainPanelLayout.createSequentialGroup()
                .addContainerGap()
                .add(MainTabbedPane, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 283, Short.MAX_VALUE)
                .addContainerGap())
        );

        DataPanel.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));

        nameLabel.setText("Name");

        typeLabel.setText("Type");

        lenghtLabel.setText("Lenght");

        weightLabel.setText("Weight");

        listLabel.setText("List");

        timesLabel.setText("Times seen");

        typeComboBox.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "Movie", "OVA", "TV" }));
        typeComboBox.setSelectedItem("TV");

        weightComboBox.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "1", "2", "3", "4", "5", "6" }));

        listComboBox.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "Known", "Watching", "Seen" }));
        listComboBox.setSelectedItem( "Known" );

        IDLabel.setText("ID");

        attributeLabel.setText("Main attributes");

        org.jdesktop.layout.GroupLayout DataPanelLayout = new org.jdesktop.layout.GroupLayout(DataPanel);
        DataPanel.setLayout(DataPanelLayout);
        DataPanelLayout.setHorizontalGroup(
            DataPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(DataPanelLayout.createSequentialGroup()
                .add(DataPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(DataPanelLayout.createSequentialGroup()
                        .add(106, 106, 106)
                        .add(attributeLabel))
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, DataPanelLayout.createSequentialGroup()
                        .addContainerGap()
                        .add(DataPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                            .add(IDLabel)
                            .add(listLabel)
                            .add(lenghtLabel)
                            .add(nameLabel))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(DataPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(IDTextField, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 127, Short.MAX_VALUE)
                            .add(listComboBox, 0, 127, Short.MAX_VALUE)
                            .add(org.jdesktop.layout.GroupLayout.TRAILING, lenghtTextField, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 127, Short.MAX_VALUE)
                            .add(nameTextField, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 127, Short.MAX_VALUE))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(DataPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                            .add(DataPanelLayout.createSequentialGroup()
                                .add(timesLabel)
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                .add(timesTextField))
                            .add(DataPanelLayout.createSequentialGroup()
                                .add(DataPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                                    .add(typeLabel)
                                    .add(weightLabel))
                                .add(8, 8, 8)
                                .add(DataPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                                    .add(weightComboBox, 0, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .add(typeComboBox, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 119, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))))))
                .addContainerGap())
        );
        DataPanelLayout.setVerticalGroup(
            DataPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(DataPanelLayout.createSequentialGroup()
                .add(11, 11, 11)
                .add(attributeLabel)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(DataPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(nameLabel)
                    .add(nameTextField, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(DataPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(lenghtLabel)
                    .add(lenghtTextField, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 22, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(DataPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(listLabel)
                    .add(listComboBox, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(DataPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(IDLabel)
                    .add(IDTextField, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 24, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
            .add(DataPanelLayout.createSequentialGroup()
                .add(33, 33, 33)
                .add(DataPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(typeLabel)
                    .add(typeComboBox, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(DataPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(weightLabel)
                    .add(weightComboBox, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 20, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(DataPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(timesLabel)
                    .add(timesTextField))
                .add(41, 41, 41))
        );

        UtilPanel.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));

        UtilTextField.setText("d:/animeList/config.txt");

        UtilButton.setText("Begin session");
        UtilButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                UtilButtonActionPerformed(evt);
            }
        });

        SaveButton.setText("Save");
        SaveButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                SaveButtonActionPerformed(evt);
            }
        });

        ExitButton.setText("Exit");
        ExitButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ExitButtonActionPerformed(evt);
            }
        });

        MenuIsFailoButton.setText("From file");
        MenuIsFailoButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                MenuFromFileButtonActionPerformed(evt);
            }
        });

        optionLabel.setText("Main options");

        org.jdesktop.layout.GroupLayout UtilPanelLayout = new org.jdesktop.layout.GroupLayout(UtilPanel);
        UtilPanel.setLayout(UtilPanelLayout);
        UtilPanelLayout.setHorizontalGroup(
            UtilPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(UtilPanelLayout.createSequentialGroup()
                .add(UtilPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(UtilPanelLayout.createSequentialGroup()
                        .add(31, 31, 31)
                        .add(optionLabel))
                    .add(UtilPanelLayout.createSequentialGroup()
                        .addContainerGap()
                        .add(UtilPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(MenuIsFailoButton, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 119, Short.MAX_VALUE)
                            .add(org.jdesktop.layout.GroupLayout.TRAILING, UtilTextField, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 105, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                            .add(UtilButton, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 119, Short.MAX_VALUE)))
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, UtilPanelLayout.createSequentialGroup()
                        .addContainerGap()
                        .add(SaveButton, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 119, Short.MAX_VALUE))
                    .add(UtilPanelLayout.createSequentialGroup()
                        .addContainerGap()
                        .add(ExitButton, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 119, Short.MAX_VALUE)))
                .addContainerGap())
        );
        UtilPanelLayout.setVerticalGroup(
            UtilPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(UtilPanelLayout.createSequentialGroup()
                .add(optionLabel)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(UtilButton)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(UtilTextField, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(MenuIsFailoButton)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(SaveButton)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(ExitButton)
                .addContainerGap())
        );

        WorkPanel.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));

        randomLabel.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        changeButton.setText("Change entry");
        changeButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                changeButtonActionPerformed(evt);
            }
        });

        finishedButton.setText("Finished");
        finishedButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                finishedButtonActionPerformed(evt);
            }
        });

        watchingButton.setText("Watching");
        watchingButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                watchingButtonActionPerformed(evt);
            }
        });

        addButton.setText("Add entry");
        addButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                addButtonActionPerformed(evt);
            }
        });

        randomButton.setText("Choose random");
        randomButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                randomButtonActionPerformed(evt);
            }
        });

        deleteButton.setText("Delete entry");
        deleteButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                deleteButtonActionPerformed(evt);
            }
        });

        functionLabel.setText("Main functions");

        dropButton.setText("Drop entry");
        dropButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                dropButtonActionPerformed(evt);
            }
        });

        SearchButton.setText("Search for entries");
        SearchButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                SearchButtonActionPerformed(evt);
            }
        });

        ShowListsButton.setText("Show Lists");
        ShowListsButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ShowListsButtonActionPerformed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout WorkPanelLayout = new org.jdesktop.layout.GroupLayout(WorkPanel);
        WorkPanel.setLayout(WorkPanelLayout);
        WorkPanelLayout.setHorizontalGroup(
            WorkPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(WorkPanelLayout.createSequentialGroup()
                .add(WorkPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(WorkPanelLayout.createSequentialGroup()
                        .add(WorkPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                            .add(org.jdesktop.layout.GroupLayout.LEADING, WorkPanelLayout.createSequentialGroup()
                                .add(26, 26, 26)
                                .add(functionLabel)
                                .add(100, 100, 100))
                            .add(org.jdesktop.layout.GroupLayout.LEADING, WorkPanelLayout.createSequentialGroup()
                                .addContainerGap()
                                .add(WorkPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                                    .add(org.jdesktop.layout.GroupLayout.LEADING, watchingButton, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 99, Short.MAX_VALUE)
                                    .add(org.jdesktop.layout.GroupLayout.LEADING, finishedButton, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 99, Short.MAX_VALUE)
                                    .add(changeButton, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                .add(WorkPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                                    .add(addButton, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 96, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                    .add(deleteButton, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 97, Short.MAX_VALUE)
                                    .add(dropButton, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(WorkPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(ShowListsButton, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 107, Short.MAX_VALUE)
                            .add(WorkPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                                .add(randomLabel, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .add(randomButton, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))
                    .add(WorkPanelLayout.createSequentialGroup()
                        .addContainerGap()
                        .add(SearchButton, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 152, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );
        WorkPanelLayout.setVerticalGroup(
            WorkPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(WorkPanelLayout.createSequentialGroup()
                .add(functionLabel)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(WorkPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(changeButton)
                    .add(addButton)
                    .add(randomButton, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 37, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(WorkPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(WorkPanelLayout.createSequentialGroup()
                        .add(WorkPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                            .add(finishedButton)
                            .add(deleteButton, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 23, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(WorkPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                            .add(watchingButton)
                            .add(dropButton)
                            .add(ShowListsButton, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 23, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                    .add(randomLabel, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 20, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(SearchButton)
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        bannerLabel.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));

        imageLabel.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        imageScrollPane.setViewportView(imageLabel);

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(bannerLabel, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 705, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, layout.createSequentialGroup()
                        .add(6, 6, 6)
                        .add(WorkPanel, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(DataPanel, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(UtilPanel, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(161, 161, 161))
                    .add(layout.createSequentialGroup()
                        .add(4, 4, 4)
                        .add(MainPanel, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.UNRELATED)
                        .add(imageScrollPane, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 417, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .add(bannerLabel, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 182, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(imageScrollPane, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 309, Short.MAX_VALUE)
                    .add(MainPanel, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(DataPanel, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(WorkPanel, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(UtilPanel, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );

        getAccessibleContext().setAccessibleName("MainWindow");

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void changeButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_changeButtonActionPerformed
        sameNameFound = false;
        sameLenghtFound = false;
        sameTimesFound = false;
        try {
            Integer.parseInt(IDTextField.getText());
            sameIDFound = false;
        } catch (NumberFormatException e) {
            System.out.println(e.toString()+" sameIDFound = true");
            sameIDFound = true;
        }
        if (IDTextField.getText().matches("")){
            sameIDFound = true;
        }
        if (nameTextField.getText().matches("")){
            sameNameFound = true;
        }
        if (lenghtTextField.getText().matches("")){
            sameLenghtFound = true;
        }
        if (timesTextField.getText().matches("")){
            sameTimesFound = true;
        }
        try {
            if (sameLenghtFound == false){
                Integer.parseInt(lenghtTextField.getText());
            }
            wrongLenghtFound = false;
        } catch (NumberFormatException e) {
            System.out.println(e.toString()+" wrongLenghtFound = true");
            wrongLenghtFound = true;
        }
        try {
            if (sameTimesFound == false){
                Integer.parseInt(timesTextField.getText());
            }
            wrongTimesFound = false;
        } catch (NumberFormatException e) {
            System.out.println(e.toString()+" wrongTimesFound = true");
            wrongTimesFound = true;
        }
        if (sameIDFound == true){
            JOptionPane.showConfirmDialog((Component)null, "Wrong ID received: ID cannot be empty or not digit!", "alert", JOptionPane.DEFAULT_OPTION);
        } else if (wrongLenghtFound == true && sameLenghtFound == false){
            JOptionPane.showConfirmDialog((Component)null, "Wrong Lenght received: Lenght cannot be not digit!", "alert", JOptionPane.DEFAULT_OPTION);
        } else if (wrongTimesFound == true && sameTimesFound == false){
            JOptionPane.showConfirmDialog((Component)null, "Wrong Times Seen received: Times Seen cannot be not digit!", "alert", JOptionPane.DEFAULT_OPTION);
        } else {
            if (operationsObject.changeEntry(sameNameFound, sameLenghtFound, sameTimesFound) == false){
                JOptionPane.showConfirmDialog((Component)null, "Received ID is not found in any of the lists!", "alert", JOptionPane.DEFAULT_OPTION);
            }
        }
}//GEN-LAST:event_changeButtonActionPerformed

    private void finishedButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_finishedButtonActionPerformed
        onActionPerformedIDVariableChecks("Finished");
}//GEN-LAST:event_finishedButtonActionPerformed

    private void watchingButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_watchingButtonActionPerformed
        onActionPerformedIDVariableChecks("Watching");
}//GEN-LAST:event_watchingButtonActionPerformed

    private void addButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_addButtonActionPerformed
        wrongNameFound = false;
        if (nameTextField.getText().matches("")){
            wrongNameFound = true;
        }
        wrongLenghtFound = verifyInputVariables(wrongLenghtFound, lenghtTextField);
        wrongTimesFound = verifyInputVariables(wrongTimesFound, timesTextField);
        if (wrongNameFound == true){
            JOptionPane.showConfirmDialog((Component)null, "Wrong Name received: Name cannot be empty!", "alert", JOptionPane.DEFAULT_OPTION);
        } else if (wrongLenghtFound == true){
            JOptionPane.showConfirmDialog((Component)null, "Wrong Lenght received: Lenght cannot be empty or not digit!", "alert", JOptionPane.DEFAULT_OPTION);
        } else if (wrongTimesFound == true){
            JOptionPane.showConfirmDialog((Component)null, "Wrong Times Seen received: Times Seen cannot be empty or not digit!", "alert", JOptionPane.DEFAULT_OPTION);
        } else {
            operationsObject.makeNewEntry();
        }
}//GEN-LAST:event_addButtonActionPerformed

    private void randomButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_randomButtonActionPerformed
        retunChosenValue = operationsObject.suggestRandom();
        size = ReccomendedTable.getRowCount();
        for (i = 0; i < size; i++){
            if ((Integer)ReccomendedTable.getValueAt(i, 0) == retunChosenValue){
                ReccomendedTable.changeSelection(i, 0, false, false);
                operationsObject.fillFields(ReccomendedTable, imageLabel, false, operationsObject.getReccomendedList(), "Reccomended");
            }
        }
}//GEN-LAST:event_randomButtonActionPerformed

    private void deleteButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_deleteButtonActionPerformed
        onActionPerformedIDVariableChecks("Delete");
}//GEN-LAST:event_deleteButtonActionPerformed

    private void UtilButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_UtilButtonActionPerformed
        //window is associated with the supporting class
        //data is being loaded from files and system is booting
        try {
            operationsObject = new operations(this);
            sessionStarted = true;
            bannerLabel.setIcon(new ImageIcon(operationsObject.getPictureDirectory()+"banner.JPG"));
            UtilTextField.setEnabled(false);
            UtilButton.setEnabled(false);
            MenuIsFailoButton.setEnabled(false);
            ExitButton.setEnabled(true);
            SaveButton.setEnabled(true);
            addButton.setEnabled(true);
            changeButton.setEnabled(true);
            deleteButton.setEnabled(true);
            finishedButton.setEnabled(true);
            randomButton.setEnabled(true);
            watchingButton.setEnabled(true);
            SearchButton.setEnabled(true);
            dropButton.setEnabled(true);
            listComboBox.setEnabled(true);
            typeComboBox.setEnabled(true);
            weightComboBox.setEnabled(true);
            lenghtTextField.setEnabled(true);
            nameTextField.setEnabled(true);
            timesTextField.setEnabled(true);
            IDTextField.setEnabled(true);
        } catch (Exception e) {
            System.out.println(e.toString()+" UtilButtonActionPerformed");
            JOptionPane.showConfirmDialog((Component)null, "Action failed!", "alert", JOptionPane.DEFAULT_OPTION);
        }

        
}//GEN-LAST:event_UtilButtonActionPerformed

    private void SaveButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_SaveButtonActionPerformed
        try {
            actionOnApplicationExit();
            ShowListsButton.setEnabled(true);
        } catch (Exception e) {
            System.out.println(e.toString()+ " SaveButtonActionPerformed");
            JOptionPane.showConfirmDialog((Component)null, "Action failed!", "alert", JOptionPane.DEFAULT_OPTION);
        }
}//GEN-LAST:event_SaveButtonActionPerformed

    private void ExitButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ExitButtonActionPerformed
        if (sessionStarted == true){
            actionOnApplicationExit();
        }
        System.exit(0);
}//GEN-LAST:event_ExitButtonActionPerformed

    private void SeenPropertyInput(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_SeenPropertyInput
        operationsObject.fillFields(SeenTable, imageLabel, true, operationsObject.getSeenList(), "Seen");
}//GEN-LAST:event_SeenPropertyInput

    private void WatchingPropertyInput(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_WatchingPropertyInput
        operationsObject.fillFields(WatchingTable, imageLabel, true, operationsObject.getWatchingList(), "Watching");
}//GEN-LAST:event_WatchingPropertyInput

    private void KnownPropertyInput(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_KnownPropertyInput
        operationsObject.fillFields(KnownTable, imageLabel, true, operationsObject.getKnownList(), "Known");
}//GEN-LAST:event_KnownPropertyInput

    private void MenuFromFileButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_MenuFromFileButtonActionPerformed
        try {
            returnValue = fileChooser.showOpenDialog(AnimeWindow.this);
            if (returnValue == JFileChooser.APPROVE_OPTION) {
                file = fileChooser.getSelectedFile();
                UtilTextField.setText(file.getAbsolutePath());
            }
        } catch (Exception e) {
            System.out.println(e.toString()+" MenuFromFileButtonActionPerformed");
            JOptionPane.showConfirmDialog((Component)null, "Action failed!", "alert", JOptionPane.DEFAULT_OPTION);
        }    
    }//GEN-LAST:event_MenuFromFileButtonActionPerformed

    private void ShowListsButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ShowListsButtonActionPerformed
        try {
            lists = new Lists(operationsObject);
            lists.setVisible(true);
        } catch (Exception e) {
            System.out.println(e.toString()+" ShowListsButtonActionPerformed");
            JOptionPane.showConfirmDialog((Component)null, "Action failed!", "alert", JOptionPane.DEFAULT_OPTION);
        }
    }//GEN-LAST:event_ShowListsButtonActionPerformed

    private void SearchButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_SearchButtonActionPerformed
        search = new Search(this);
        search.setVisible(true);
    }//GEN-LAST:event_SearchButtonActionPerformed

    private void ReccomendedPropertyInput(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_ReccomendedPropertyInput
        operationsObject.fillFields(ReccomendedTable, imageLabel, false, operationsObject.getReccomendedList(), "Reccomended");
    }//GEN-LAST:event_ReccomendedPropertyInput

    private void WatchingPropertyImputFromButtonPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_WatchingPropertyImputFromButtonPressed
        operationsObject.fillFields(WatchingTable, imageLabel, true, operationsObject.getWatchingList(), "Watching");
    }//GEN-LAST:event_WatchingPropertyImputFromButtonPressed

    private void KnownPropertyImputFromButtonPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_KnownPropertyImputFromButtonPressed
        operationsObject.fillFields(KnownTable, imageLabel, true, operationsObject.getKnownList(), "Known");
    }//GEN-LAST:event_KnownPropertyImputFromButtonPressed

    private void ReccomendedgPropertyImputFromButtonPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_ReccomendedgPropertyImputFromButtonPressed
        operationsObject.fillFields(ReccomendedTable, imageLabel, false, operationsObject.getReccomendedList(), "Reccomended");
    }//GEN-LAST:event_ReccomendedgPropertyImputFromButtonPressed

    private void SeenPropertyImputFromButtonPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_SeenPropertyImputFromButtonPressed
        operationsObject.fillFields(SeenTable, imageLabel, true, operationsObject.getSeenList(), "Seen");
    }//GEN-LAST:event_SeenPropertyImputFromButtonPressed

    private void dropButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_dropButtonActionPerformed
        onActionPerformedIDVariableChecks("Drop");
    }//GEN-LAST:event_dropButtonActionPerformed

    private void onActionPerformedIDVariableChecks(String oprationType){
        wrongIDFound = verifyInputVariables(wrongIDFound, IDTextField);
        if (wrongIDFound == true){
            JOptionPane.showConfirmDialog((Component)null, "Wrong ID received: ID cannot be empty or not digit!", "alert", JOptionPane.DEFAULT_OPTION);
        } else {
            if (oprationType.equals("Finished")){
                if (operationsObject.markAsSeen() == false){
                   JOptionPane.showConfirmDialog((Component)null, "Received ID is not found in the list of seen entries!", "alert", JOptionPane.DEFAULT_OPTION);
                }
            } else if (oprationType.equals("Watching")){
                if (operationsObject.markAsWatching() == false){
                   JOptionPane.showConfirmDialog((Component)null, "Received ID is not found in the lists of seen or known entries!", "alert", JOptionPane.DEFAULT_OPTION);
                }
            } else if (oprationType.equals("Delete")){
                if (operationsObject.deleteEntry() == false){
                    JOptionPane.showConfirmDialog((Component)null, "Received ID is not found in any of the entry lists!", "alert", JOptionPane.DEFAULT_OPTION);
                }
            } else if (oprationType.equals("Drop")){
                if (operationsObject.dropEntry() == false){
                    JOptionPane.showConfirmDialog((Component)null, "Received ID is not found in the list of watching entries!", "alert", JOptionPane.DEFAULT_OPTION);
                }
            }
        }
    }

    private boolean verifyInputVariables(boolean variable, JTextField targetField){
        try {
            Integer.parseInt(targetField.getText());
            variable = false;
        } catch (NumberFormatException e) {
            System.out.println(e.toString()+" variable = true");
            variable = true;
        }
        if (targetField.getText().matches("")){
            variable = true;
        }
        return variable;
    }

    private void actionOnApplicationExit(){
        operationsObject.saveAllData();
        operationsObject.closeWriters();
    }

    public operations getOperations(){
        return operationsObject;
    }
    
    public javax.swing.JTable getSeenTable(){
        return SeenTable;
    }
    
    public javax.swing.JTable getKnownTable(){
        return KnownTable;
    }
    
    public javax.swing.JTable getWatchingTable(){
        return WatchingTable;
    }
    
    public javax.swing.JTable getReccomendedTable(){
        return ReccomendedTable;
    }
    
    public javax.swing.JTextField getIDTextField(){
        return IDTextField;
    }
    
    public javax.swing.JTextField getnameTextField(){
        return nameTextField;
    }
    
    public javax.swing.JTextField getlenghtTextField(){
        return lenghtTextField;
    }
    
    public javax.swing.JTextField gettimesTextField(){
        return timesTextField;
    }
    
    public javax.swing.JTextField getUtilTextField(){
        return UtilTextField;
    }
    
    public javax.swing.JComboBox gettypeComboBox(){
        return typeComboBox;
    }
    
    public javax.swing.JComboBox getweightComboBox(){
        return weightComboBox;
    }
    
    public javax.swing.JComboBox getlistComboBox(){
        return listComboBox;
    }
    
    public javax.swing.JLabel getrandomLabel(){
        return randomLabel;
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel DataPanel;
    private javax.swing.JButton ExitButton;
    private javax.swing.JLabel IDLabel;
    private javax.swing.JTextField IDTextField;
    private javax.swing.JScrollPane KnownScrollPane;
    private javax.swing.JTable KnownTable;
    private javax.swing.JPanel MainPanel;
    private javax.swing.JTabbedPane MainTabbedPane;
    private javax.swing.JButton MenuIsFailoButton;
    private javax.swing.JScrollPane ReccomendedScrollPane;
    private javax.swing.JTable ReccomendedTable;
    private javax.swing.JButton SaveButton;
    private javax.swing.JButton SearchButton;
    private javax.swing.JScrollPane SeenScrollPane;
    private javax.swing.JTable SeenTable;
    private javax.swing.JButton ShowListsButton;
    private javax.swing.JButton UtilButton;
    private javax.swing.JPanel UtilPanel;
    private javax.swing.JTextField UtilTextField;
    private javax.swing.JScrollPane WatchingScrollPane;
    private javax.swing.JTable WatchingTable;
    private javax.swing.JPanel WorkPanel;
    private javax.swing.JButton addButton;
    private javax.swing.JLabel attributeLabel;
    private javax.swing.JLabel bannerLabel;
    private javax.swing.JButton changeButton;
    private javax.swing.JButton deleteButton;
    private javax.swing.JButton dropButton;
    private javax.swing.JButton finishedButton;
    private javax.swing.JLabel functionLabel;
    private javax.swing.JLabel imageLabel;
    private javax.swing.JScrollPane imageScrollPane;
    private javax.swing.JLabel lenghtLabel;
    private javax.swing.JTextField lenghtTextField;
    private javax.swing.JComboBox listComboBox;
    private javax.swing.JLabel listLabel;
    private javax.swing.JLabel nameLabel;
    private javax.swing.JTextField nameTextField;
    private javax.swing.JLabel optionLabel;
    private javax.swing.JButton randomButton;
    private javax.swing.JLabel randomLabel;
    private javax.swing.JLabel timesLabel;
    private javax.swing.JTextField timesTextField;
    private javax.swing.JComboBox typeComboBox;
    private javax.swing.JLabel typeLabel;
    private javax.swing.JButton watchingButton;
    private javax.swing.JComboBox weightComboBox;
    private javax.swing.JLabel weightLabel;
    // End of variables declaration//GEN-END:variables
    
}