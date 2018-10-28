
package animelist;

import java.awt.*;
import javax.swing.*;

public class Lists extends javax.swing.JFrame {
    
    private ImageIcon icon;
    private operations operations;
    
    public Lists(operations Operations) {
        initComponents();
        operations = Operations;
        operations.SpecialshowImputedEntities(operations.getIDList(), IDTable);
        operations.SpecialshowImputedEntities(operations.getNameList(), NamesTable);
    }
    
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        MainPanel = new javax.swing.JPanel();
        MainTabbedPane = new javax.swing.JTabbedPane();
        IDScrollPane = new javax.swing.JScrollPane();
        IDTable = new javax.swing.JTable();
        NamesScrollPane = new javax.swing.JScrollPane();
        NamesTable = new javax.swing.JTable();
        imagePanel = new javax.swing.JPanel();
        imageLabel = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("Pilni sarasai");

        MainPanel.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));

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
                showPicture(evt);
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
                showPicture(evt);
                showPicture1(evt);
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

        imagePanel.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));

        org.jdesktop.layout.GroupLayout imagePanelLayout = new org.jdesktop.layout.GroupLayout(imagePanel);
        imagePanel.setLayout(imagePanelLayout);
        imagePanelLayout.setHorizontalGroup(
            imagePanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(imageLabel, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 189, Short.MAX_VALUE)
        );
        imagePanelLayout.setVerticalGroup(
            imagePanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(imageLabel, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 202, Short.MAX_VALUE)
        );

        org.jdesktop.layout.GroupLayout MainPanelLayout = new org.jdesktop.layout.GroupLayout(MainPanel);
        MainPanel.setLayout(MainPanelLayout);
        MainPanelLayout.setHorizontalGroup(
            MainPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(MainPanelLayout.createSequentialGroup()
                .addContainerGap()
                .add(MainTabbedPane, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 442, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(imagePanel, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(177, Short.MAX_VALUE))
        );
        MainPanelLayout.setVerticalGroup(
            MainPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(MainPanelLayout.createSequentialGroup()
                .add(MainPanelLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(MainPanelLayout.createSequentialGroup()
                        .addContainerGap()
                        .add(MainTabbedPane, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 470, Short.MAX_VALUE))
                    .add(MainPanelLayout.createSequentialGroup()
                        .add(32, 32, 32)
                        .add(imagePanel, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
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

    private void showPicture(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_showPicture
        try {
            int row = IDTable.getSelectedRow();
            //jei kas nors pasirinkta
            if (row != -1){
                String temp = IDTable.getValueAt(row, 1).toString();
                String realName = temp.substring(2);
                icon = new ImageIcon(operations.getPictureDirektorija()+realName+".jpg");
                imageLabel.setIcon(icon);
            }
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida atidarant faila!");
            icon = new ImageIcon(operations.getPictureDirektorija()+"error.JPG");
            imageLabel.setIcon(icon);
        }
    }//GEN-LAST:event_showPicture

    private void showPicture1(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_showPicture1
        try {
            int row = NamesTable.getSelectedRow();
            //jei kas nors pasirinkta
            if (row != -1){
                String temp = NamesTable.getValueAt(row, 1).toString();
                String realName = temp.substring(2);
                icon = new ImageIcon(operations.getPictureDirektorija()+realName+".jpg");
                imageLabel.setIcon(icon);
            }
        } catch (Exception e){
            System.out.println(e.toString());
            System.out.println("(diagnostika):klaida atidarant faila!");
            icon = new ImageIcon(operations.getPictureDirektorija()+"error.JPG");
            imageLabel.setIcon(icon);
        }
    }//GEN-LAST:event_showPicture1
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JScrollPane IDScrollPane;
    private javax.swing.JTable IDTable;
    private javax.swing.JPanel MainPanel;
    private javax.swing.JTabbedPane MainTabbedPane;
    private javax.swing.JScrollPane NamesScrollPane;
    private javax.swing.JTable NamesTable;
    private javax.swing.JLabel imageLabel;
    private javax.swing.JPanel imagePanel;
    // End of variables declaration//GEN-END:variables
    
}
