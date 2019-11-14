
package animelist;

import javax.swing.*;
import java.awt.*;

public class Search extends javax.swing.JFrame {
    
    private AnimeWindow Window;
    private int row;
        
    public Search(AnimeWindow window) {
        try {
            initComponents();
            Window = window;
            bannerLabel.setIcon(new ImageIcon(Window.getOperations().getPictureDirectory()+"banner.JPG"));
        } catch (Exception e){
            System.out.println(e.toString()+" Search");
            JOptionPane.showConfirmDialog((Component)null, "Action failed!", "alert", JOptionPane.DEFAULT_OPTION);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        bannerLabel = new javax.swing.JLabel();
        SaveButton = new javax.swing.JButton();
        exitButton = new javax.swing.JButton();
        frameScrollPane = new javax.swing.JScrollPane();
        MainPanel = new javax.swing.JPanel();
        MainTabbedPane = new javax.swing.JTabbedPane();
        SearchScrollPane = new javax.swing.JScrollPane();
        SearchTable = new javax.swing.JTable();
        IDButton = new javax.swing.JButton();
        SearchTextField = new javax.swing.JTextField();
        NameButton = new javax.swing.JButton();
        TypeButton = new javax.swing.JButton();
        typeComboBox = new javax.swing.JComboBox();
        WeightButton = new javax.swing.JButton();
        weightComboBox = new javax.swing.JComboBox();
        LenghtButton = new javax.swing.JButton();
        TimesButton = new javax.swing.JButton();
        imageScrollPane = new javax.swing.JScrollPane();
        imageLabel = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("Search window");

        bannerLabel.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));

        SaveButton.setText("Save");
        SaveButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                SaveButtonActionPerformed(evt);
            }
        });

        exitButton.setText("Exit");
        exitButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                exitButtonActionPerformed(evt);
            }
        });

        MainPanel.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        MainPanel.setPreferredSize(new java.awt.Dimension(875, 450));

        MainTabbedPane.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));

        SearchTable.setModel(new javax.swing.table.DefaultTableModel(
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
        SearchTable.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                showPicture(evt);
            }
        });
        SearchTable.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                showPictureOnButtonClick(evt);
            }
            public void keyReleased(java.awt.event.KeyEvent evt) {
                showPictureOnButtonClick(evt);
            }
        });
        SearchScrollPane.setViewportView(SearchTable);
        SearchTable.getColumnModel().getColumn(0).setPreferredWidth(30);
        SearchTable.getColumnModel().getColumn(1).setPreferredWidth(200);
        SearchTable.getColumnModel().getColumn(2).setPreferredWidth(50);
        SearchTable.getColumnModel().getColumn(3).setPreferredWidth(50);
        SearchTable.getColumnModel().getColumn(4).setPreferredWidth(50);
        SearchTable.getColumnModel().getColumn(5).setPreferredWidth(50);

        MainTabbedPane.addTab("Paieska", SearchScrollPane);

        IDButton.setText("Using ID");
        IDButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                IDButtonActionPerformed(evt);
            }
        });

        NameButton.setText("Using Name");
        NameButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                NameButtonActionPerformed(evt);
            }
        });

        TypeButton.setText("Using Type");
        TypeButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                TypeButtonActionPerformed(evt);
            }
        });

        typeComboBox.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "Movie", "OVA", "TV" }));
        typeComboBox.setSelectedItem("TV");

        WeightButton.setText("Using Weight");
        WeightButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                WeightButtonActionPerformed(evt);
            }
        });

        weightComboBox.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "1", "2", "3", "4", "5", "6" }));

        LenghtButton.setText("Using Lenght");
        LenghtButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                LenghtButtonActionPerformed(evt);
            }
        });

        TimesButton.setText("Using Times");
        TimesButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                TimesButtonActionPerformed(evt);
            }
        });

        imageLabel.setText(" ");
        imageLabel.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        imageScrollPane.setViewportView(imageLabel);

        org.jdesktop.layout.GroupLayout MainPanelLayout = new org.jdesktop.layout.GroupLayout(MainPanel);
        MainPanel.setLayout(MainPanelLayout);
        MainPanelLayout.setHorizontalGroup(
            MainPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(MainPanelLayout.createSequentialGroup()
                .add(MainPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(MainPanelLayout.createSequentialGroup()
                        .add(MainTabbedPane, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(imageScrollPane, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 367, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                    .add(MainPanelLayout.createSequentialGroup()
                        .add(IDButton)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(NameButton)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(MainPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                            .add(typeComboBox, 0, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .add(TypeButton, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 93, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(MainPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                            .add(WeightButton)
                            .add(weightComboBox, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 99, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(MainPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(MainPanelLayout.createSequentialGroup()
                                .add(LenghtButton, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 105, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                                .add(TimesButton))
                            .add(SearchTextField, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 138, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))))
                .addContainerGap(45, Short.MAX_VALUE))
        );
        MainPanelLayout.setVerticalGroup(
            MainPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(MainPanelLayout.createSequentialGroup()
                .add(MainPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                    .add(imageScrollPane)
                    .add(MainTabbedPane, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 299, Short.MAX_VALUE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(MainPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(IDButton, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 38, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(NameButton, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 39, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(TypeButton, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 40, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(WeightButton, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 40, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(LenghtButton, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 40, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(TimesButton, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 42, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(MainPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(typeComboBox, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 19, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(weightComboBox, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 19, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(SearchTextField, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 26, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(84, Short.MAX_VALUE))
        );

        MainTabbedPane.getAccessibleContext().setAccessibleName("Search");

        frameScrollPane.setViewportView(MainPanel);

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .add(bannerLabel, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 706, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                    .add(exitButton, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(SaveButton, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 93, Short.MAX_VALUE))
                .addContainerGap(82, Short.MAX_VALUE))
            .add(frameScrollPane, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 885, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(bannerLabel, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 182, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(layout.createSequentialGroup()
                        .add(22, 22, 22)
                        .add(SaveButton, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 50, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(exitButton, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 51, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(frameScrollPane, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void IDButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_IDButtonActionPerformed
        performSearchUsingTextField(SearchTextField, "ID");
    }//GEN-LAST:event_IDButtonActionPerformed

    private void NameButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_NameButtonActionPerformed
        performSearchUsingTextField(SearchTextField, "Name");
    }//GEN-LAST:event_NameButtonActionPerformed

    private void TypeButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_TypeButtonActionPerformed
        performSearchUsingComboBox(typeComboBox, "Type");
    }//GEN-LAST:event_TypeButtonActionPerformed

    private void WeightButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_WeightButtonActionPerformed
        performSearchUsingComboBox(weightComboBox, "Weight");
    }//GEN-LAST:event_WeightButtonActionPerformed

    private void SaveButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_SaveButtonActionPerformed
        Window.getOperations().saveSearchList();
    }//GEN-LAST:event_SaveButtonActionPerformed

    private void showPicture(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_showPicture
         showPictureBasic();
    }//GEN-LAST:event_showPicture

    private void exitButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_exitButtonActionPerformed
        dispose();
    }//GEN-LAST:event_exitButtonActionPerformed

    private void LenghtButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_LenghtButtonActionPerformed
        performSearchUsingTextField(SearchTextField, "Lenght");
    }//GEN-LAST:event_LenghtButtonActionPerformed

    private void TimesButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_TimesButtonActionPerformed
        performSearchUsingTextField(SearchTextField, "Times");
    }//GEN-LAST:event_TimesButtonActionPerformed

    private void showPictureOnButtonClick(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_showPictureOnButtonClick
        showPictureBasic();
    }//GEN-LAST:event_showPictureOnButtonClick

    private void showPictureBasic(){
        try {
            row = SearchTable.getSelectedRow();
            //if any entry is selected
            if (row != -1){
                imageLabel.setIcon(new ImageIcon(Window.getOperations().getPictureDirectory()+SearchTable.getValueAt(row, 1).toString().substring(2)+".jpg"));
            }
        } catch (Exception e){
            System.out.println(e.toString()+" showPicture");
            imageLabel.setIcon(new ImageIcon(Window.getOperations().getPictureDirectory()+"error.JPG"));
        }
    }

    private void performSearchUsingTextField(JTextField targetTextField, String typeOfSearch){
        try {
            Window.getOperations().showSearchResults(targetTextField.getText(), typeOfSearch);
            Window.getOperations().showEntities(Window.getOperations().getTempList(), SearchTable, true);
        } catch (Exception e) {
            System.out.println(e.toString()+" performSearchUsingTextField");
            JOptionPane.showConfirmDialog((Component)null, "Search failed!", "alert", JOptionPane.DEFAULT_OPTION);
        }
    }

    private void performSearchUsingComboBox(JComboBox targetComboBox, String typeOfSearch){
        try {
            Window.getOperations().showSearchResults(targetComboBox.getSelectedItem().toString(), typeOfSearch);
            Window.getOperations().showEntities(Window.getOperations().getTempList(), SearchTable, true);
        } catch (Exception e) {
            System.out.println(e.toString()+" performSearchUsingComboBox");
            JOptionPane.showConfirmDialog((Component)null, "Search failed!", "alert", JOptionPane.DEFAULT_OPTION);
        }
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton IDButton;
    private javax.swing.JButton LenghtButton;
    private javax.swing.JPanel MainPanel;
    private javax.swing.JTabbedPane MainTabbedPane;
    private javax.swing.JButton NameButton;
    private javax.swing.JButton SaveButton;
    private javax.swing.JScrollPane SearchScrollPane;
    private javax.swing.JTable SearchTable;
    private javax.swing.JTextField SearchTextField;
    private javax.swing.JButton TimesButton;
    private javax.swing.JButton TypeButton;
    private javax.swing.JButton WeightButton;
    private javax.swing.JLabel bannerLabel;
    private javax.swing.JButton exitButton;
    private javax.swing.JScrollPane frameScrollPane;
    private javax.swing.JLabel imageLabel;
    private javax.swing.JScrollPane imageScrollPane;
    private javax.swing.JComboBox typeComboBox;
    private javax.swing.JComboBox weightComboBox;
    // End of variables declaration//GEN-END:variables
    
}