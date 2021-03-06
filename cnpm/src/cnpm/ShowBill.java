/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cnpm;

import java.awt.Color;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.ImageIcon;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.PDPage;
import org.apache.pdfbox.util.ImageIOUtil;

/**
 *
 * @author USER
 */
public class ShowBill extends javax.swing.JFrame {

    String Name;

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }
    /**
     * Creates new form Test1
     */
    public ShowBill() {
        initComponents();
        this.getContentPane().setBackground(new Color(102,102,102));
        this.setLocationRelativeTo(null);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        lbPrint = new javax.swing.JLabel();
        lbCancel = new javax.swing.JLabel();
        btCancel = new javax.swing.JButton();
        btPrint = new javax.swing.JButton();
        jPanel1 = new javax.swing.JPanel();
        lbBill = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setUndecorated(true);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        lbPrint.setFont(new java.awt.Font("Courier New", 1, 24)); // NOI18N
        lbPrint.setForeground(new java.awt.Color(255, 255, 102));
        lbPrint.setText("PRINT");
        getContentPane().add(lbPrint, new org.netbeans.lib.awtextra.AbsoluteConstraints(200, 810, 140, 20));

        lbCancel.setFont(new java.awt.Font("Courier New", 1, 24)); // NOI18N
        lbCancel.setForeground(new java.awt.Color(255, 255, 102));
        lbCancel.setText("CANCEL");
        getContentPane().add(lbCancel, new org.netbeans.lib.awtextra.AbsoluteConstraints(460, 810, 140, 20));

        btCancel.setBackground(new java.awt.Color(102, 102, 102));
        btCancel.setForeground(new java.awt.Color(255, 255, 0));
        btCancel.setIcon(new javax.swing.ImageIcon("C:\\Users\\USER\\Desktop\\Môn Lớp\\Kĩ Thuật phần mềm\\button.png")); // NOI18N
        btCancel.setBorder(null);
        btCancel.setBorderPainted(false);
        btCancel.setContentAreaFilled(false);
        btCancel.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btCancelActionPerformed(evt);
            }
        });
        getContentPane().add(btCancel, new org.netbeans.lib.awtextra.AbsoluteConstraints(410, 790, 180, 60));

        btPrint.setBackground(new java.awt.Color(102, 102, 102));
        btPrint.setForeground(new java.awt.Color(255, 255, 0));
        btPrint.setIcon(new javax.swing.ImageIcon("C:\\Users\\USER\\Desktop\\Môn Lớp\\Kĩ Thuật phần mềm\\button.png")); // NOI18N
        btPrint.setBorder(null);
        btPrint.setBorderPainted(false);
        btPrint.setContentAreaFilled(false);
        btPrint.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btPrintActionPerformed(evt);
            }
        });
        getContentPane().add(btPrint, new org.netbeans.lib.awtextra.AbsoluteConstraints(150, 790, 180, 60));

        jPanel1.setBackground(new java.awt.Color(102, 102, 102));

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 750, Short.MAX_VALUE)
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 270, Short.MAX_VALUE)
        );

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 780, 750, 270));
        getContentPane().add(lbBill, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 20, 710, 1030));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btPrintActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btPrintActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_btPrintActionPerformed

    private void btCancelActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btCancelActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_btCancelActionPerformed

    /**
     * @param args the command line arguments
     */
    public void createImage()
    {
        try {
            String pdfFileName = "C:\\Users\\USER\\Desktop\\Môn Lớp\\Kĩ Thuật phần mềm\\Bill PDF\\"+getName()+".pdf";
            PDDocument document = PDDocument.loadNonSeq(new File(pdfFileName), null);
            
            List<PDPage> pdPages = document.getDocumentCatalog().getAllPages();
            
            int page = 0;
            
            for(PDPage pdPage : pdPages){
                ++page;
                BufferedImage bim = pdPage.convertToImage(BufferedImage.TYPE_INT_RGB, 800);
                ImageIOUtil.writeImage(bim, "C:\\Users\\USER\\Desktop\\Môn Lớp\\Kĩ Thuật phần mềm\\Bill PNG\\"+getName()+".png", 300);
            }
        } catch (IOException ex) {
            Logger.getLogger(ShowBill.class.getName()).log(Level.SEVERE, null, ex);
        }
           Image img=new ImageIcon("C:\\Users\\USER\\Desktop\\Môn Lớp\\Kĩ Thuật phần mềm\\Bill PNG\\"+getName()+".png").getImage().getScaledInstance(lbBill.getWidth(), lbBill.getHeight(),Image.SCALE_SMOOTH);
        lbBill.setIcon(new ImageIcon(img));
        this.setSize(750,850);
  
    }
//          
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(ShowBill.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(ShowBill.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(ShowBill.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(ShowBill.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new ShowBill().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    public javax.swing.JButton btCancel;
    public javax.swing.JButton btPrint;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JLabel lbBill;
    public javax.swing.JLabel lbCancel;
    public javax.swing.JLabel lbPrint;
    // End of variables declaration//GEN-END:variables
}
