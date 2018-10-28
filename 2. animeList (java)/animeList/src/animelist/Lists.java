
package animelist;

import javax.swing.*;

public class Lists extends javax.swing.JFrame {
    
    private operations operationsObject;
    private int row;
    
    public Lists(operations OperationsObject) {
        initComponents();
        operationsObject = OperationsObject;
        bannerLabel.setIcon(new ImageIcon(operationsObject.getPictureDirectory()+"banner.JPG"));
        operationsObject.showEntities(operationsObject.getIDList(), IDTable, true);
        operationsObject.showEntities(operationsObject.getNameList(), NamesTable, true);
    }
    
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        MainPanel = new javax.swing.JPanel();
        MainTabbedPane = new javax.swing.JTabbedPane();
        IDScrollPane = new javax.swing.JScrollPane();
        IDTable = new javax.swing.JTable();
        NamesScrollPane = new javax.swing.JScrollPane();
        NamesTable = new javax.swing.JTable();
        exitButton = new javax.swing.JButton();
        bannerLabel = new javax.swing.JLabel();
        imageScrollPane = new javax.swing.JScrollPane();
        imageLabel = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("List window");

        MainPanel.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));

        MainTabbedPane.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));

        IDTable.setModel(new javax.swing.table.DefaultTableModel(
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
        IDTable.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                showIDListPicture(evt);
            }
        });
        IDTable.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                showPictureInIDListWhenButtonPressed(evt);
            }
            public void keyReleased(java.awt.event.KeyEvent evt) {
                showPictureInIDListWhenButtonPressed(evt);
            }
        });
        IDScrollPane.setViewportView(IDTable);
        IDTable.getColumnModel().getColumn(0).setPreferredWidth(30);
        IDTable.getColumnModel().getColumn(1).setPreferredWidth(200);
        IDTable.getColumnModel().getColumn(2).setPreferredWidth(50);
        IDTable.getColumnModel().getColumn(3).setPreferredWidth(50);
        IDTable.getColumnModel().getColumn(4).setPreferredWidth(50);
        IDTable.getColumnModel().getColumn(5).setPreferredWidth(50);

        MainTabbedPane.addTab("ID", IDScrollPane);

        NamesTable.setModel(new javax.swing.table.DefaultTableModel(
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
        NamesTable.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                showNamesListPicture(evt);
            }
        });
        NamesTable.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                showPictureInNamesListWhenButtonPressed(evt);
            }
            public void keyReleased(java.awt.event.KeyEvent evt) {
                showPictureInNamesListWhenButtonPressed(evt);
            }
        });
        NamesScrollPane.setViewportView(NamesTable);
        NamesTable.getColumnModel().getColumn(0).setPreferredWidth(30);
        NamesTable.getColumnModel().getColumn(1).setPreferredWidth(200);
        NamesTable.getColumnModel().getColumn(2).setPreferredWidth(50);
        NamesTable.getColumnModel().getColumn(3).setPreferredWidth(50);
        NamesTable.getColumnModel().getColumn(4).setPreferredWidth(50);
        NamesTable.getColumnModel().getColumn(5).setPreferredWidth(50);

        MainTabbedPane.addTab("Names", NamesScrollPane);

        exitButton.setText("Exit");
        exitButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                exitButtonActionPerformed(evt);
            }
        });

        bannerLabel.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));

        imageLabel.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        imageScrollPane.setViewportView(imageLabel);

        org.jdesktop.layout.GroupLayout MainPanelLayout = new org.jdesktop.layout.GroupLayout(MainPanel);
        MainPanel.setLayout(MainPanelLayout);
        MainPanelLayout.setHorizontalGroup(
            MainPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(MainPanelLayout.createSequentialGroup()
                .add(MainPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(MainPanelLayout.createSequentialGroup()
                        .add(8, 8, 8)
                        .add(MainTabbedPane, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 442, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(imageScrollPane, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 362, Short.MAX_VALUE))
                    .add(MainPanelLayout.createSequentialGroup()
                        .add(bannerLabel, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 706, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(exitButton, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 94, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );
        MainPanelLayout.setVerticalGroup(
            MainPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(MainPanelLayout.createSequentialGroup()
                .add(MainPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                    .add(MainPanelLayout.createSequentialGroup()
                        .add(bannerLabel, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 182, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED))
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, MainPanelLayout.createSequentialGroup()
                        .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .add(exitButton, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 53, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(66, 66, 66)))
                .add(MainPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                    .add(imageScrollPane)
                    .add(MainTabbedPane, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 389, Short.MAX_VALUE))
                .addContainerGap())
        );

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(MainPanel, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(MainPanel, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void exitButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_exitButtonActionPerformed
        dispose();
    }//GEN-LAST:event_exitButtonActionPerformed

    private void showIDListPicture(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_showIDListPicture
        showPicture("ID");
    }//GEN-LAST:event_showIDListPicture

    private void showNamesListPicture(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_showNamesListPicture
        showPicture("Names");
    }//GEN-LAST:event_showNamesListPicture

    private void showPictureInIDListWhenButtonPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_showPictureInIDListWhenButtonPressed
        showPicture("ID");
    }//GEN-LAST:event_showPictureInIDListWhenButtonPressed

    private void showPictureInNamesListWhenButtonPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_showPictureInNamesListWhenButtonPressed
        showPicture("Names");
    }//GEN-LAST:event_showPictureInNamesListWhenButtonPressed

    private void showPicture(String listName){
        try {
            if (listName.equals("Names")){
                row = NamesTable.getSelectedRow();
            } else if (listName.equals("ID")) {
                row = IDTable.getSelectedRow();
            }
            //if any entry is selected
            if (row != -1){
                if (listName.equals("Names")){
                    imageLabel.setIcon(new ImageIcon(operationsObject.getPictureDirectory()+NamesTable.getValueAt(row, 1).toString().substring(2)+".jpg"));
                } else if (listName.equals("ID")) {
                    imageLabel.setIcon(new ImageIcon(operationsObject.getPictureDirectory()+IDTable.getValueAt(row, 1).toString().substring(2)+".jpg"));
                }
                
            }
        } catch (Exception e){
            System.out.println(e.toString()+" showPicture");
            imageLabel.setIcon(new ImageIcon(operationsObject.getPictureDirectory()+"error.JPG"));
        }
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JScrollPane IDScrollPane;
    private javax.swing.JTable IDTable;
    private javax.swing.JPanel MainPanel;
    private javax.swing.JTabbedPane MainTabbedPane;
    private javax.swing.JScrollPane NamesScrollPane;
    private javax.swing.JTable NamesTable;
    private javax.swing.JLabel bannerLabel;
    private javax.swing.JButton exitButton;
    private javax.swing.JLabel imageLabel;
    private javax.swing.JScrollPane imageScrollPane;
    // End of variables declaration//GEN-END:variables
    
}