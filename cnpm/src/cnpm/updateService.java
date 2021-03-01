/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cnpm;

import static cnpm.Connecting.Connect;
import java.awt.Color;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.awt.Font;
import java.awt.Image;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.RowFilter;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableRowSorter;

/**
 *
 * @author USER
 */
public class updateService extends javax.swing.JPanel {
   
    String getEverything;
    String idService;
     boolean check;

    public boolean isCheck() {
        return check;
    }

    public void setCheck(boolean check) {
        this.check = check;
    }

    public String getGetEverything() {
        return getEverything;
    }

    public void setGetEverything(String getEverything) {
        this.getEverything = getEverything;
    }
//JScrollPane jr=new JScrollPane();
    /**
     * Creates new form NewJPanel
     */
    public updateService() {
        initComponents();
        //Image Logo
        lbLogo.setSize(200,160);
        Image img=new ImageIcon("C:\\Users\\USER\\Desktop\\Môn Lớp\\Kĩ Thuật phần mềm\\Image\\logo.png").getImage().getScaledInstance(lbLogo.getWidth(),lbLogo.getHeight(), Image.SCALE_SMOOTH);
        lbLogo.setIcon(new ImageIcon(img));
        Image img1=new ImageIcon("C:\\Users\\USER\\Desktop\\Môn Lớp\\Kĩ Thuật phần mềm\\Image\\ServiceIcon.png").getImage().getScaledInstance(300,300, Image.SCALE_SMOOTH);
        lbServiceIcon.setIcon(new ImageIcon(img1));
        
        
        tbService.getTableHeader().setFont(new Font("DialogInput",Font.BOLD,14));
        tbService.getTableHeader().setOpaque(false);
        tbService.getTableHeader().setBackground(new Color(204, 204, 255));
        //jScrollPane2.setVisible(true);
        getInforServices();
//        jr.setViewportView(this);

        
        //
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        lbLogo = new javax.swing.JLabel();
        lbSearching = new javax.swing.JLabel();
        jScrollPane2 = new javax.swing.JScrollPane();
        tbService = new javax.swing.JTable();
        txtSearching = new javax.swing.JTextField();
        btAdd = new javax.swing.JButton();
        lbServiceIcon = new javax.swing.JLabel();

        setBackground(new java.awt.Color(255, 255, 255));
        setPreferredSize(new java.awt.Dimension(1200, 400));
        setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        lbLogo.setPreferredSize(new java.awt.Dimension(220, 180));
        add(lbLogo, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 370, 200, 180));

        lbSearching.setIcon(new javax.swing.ImageIcon("C:\\Users\\USER\\Desktop\\Môn Lớp\\Kĩ Thuật phần mềm\\search_30px.png")); // NOI18N
        add(lbSearching, new org.netbeans.lib.awtextra.AbsoluteConstraints(770, 20, 41, 40));

        jScrollPane2.setPreferredSize(new java.awt.Dimension(0, 403));

        tbService.setFont(new java.awt.Font("Dialog", 1, 12)); // NOI18N
        tbService.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "ID", "SERVICES", "PRICE"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        tbService.setRowHeight(24);
        tbService.setShowHorizontalLines(false);
        tbService.setShowVerticalLines(false);
        tbService.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tbServiceMouseClicked(evt);
            }
        });
        jScrollPane2.setViewportView(tbService);

        add(jScrollPane2, new org.netbeans.lib.awtextra.AbsoluteConstraints(210, 70, 610, 480));

        txtSearching.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                txtSearchingKeyReleased(evt);
            }
        });
        add(txtSearching, new org.netbeans.lib.awtextra.AbsoluteConstraints(570, 20, 240, 41));

        btAdd.setFont(new java.awt.Font("Dialog", 1, 14)); // NOI18N
        btAdd.setIcon(new javax.swing.ImageIcon("C:\\Users\\USER\\Desktop\\Môn Lớp\\Kĩ Thuật phần mềm\\Image\\icons8_plus_min1111111us_32.png")); // NOI18N
        btAdd.setText("ADD SERVICE");
        btAdd.setPreferredSize(new java.awt.Dimension(300, 48));
        btAdd.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btAddActionPerformed(evt);
            }
        });
        add(btAdd, new org.netbeans.lib.awtextra.AbsoluteConstraints(390, 20, 170, 46));

        lbServiceIcon.setPreferredSize(new java.awt.Dimension(500, 300));
        add(lbServiceIcon, new org.netbeans.lib.awtextra.AbsoluteConstraints(820, 190, 260, 170));
    }// </editor-fold>//GEN-END:initComponents
public void  filterData(String query)
{
    DefaultTableModel dtm= (DefaultTableModel)tbService.getModel();
    TableRowSorter<DefaultTableModel> tr= new TableRowSorter<DefaultTableModel>(dtm);
    tbService.setRowSorter(tr);
    tr.setRowFilter(RowFilter.regexFilter(query));
}
    private void txtSearchingKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtSearchingKeyReleased
        // TODO add your handling code here:
        String query=txtSearching.getText().toUpperCase();
        filterData(query);
    }//GEN-LAST:event_txtSearchingKeyReleased

    private void btAddActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btAddActionPerformed
        // TODO add your handling code here:
         AddServices rm=new AddServices();
         rm.setVisible(true);
 
       
        rm.btAdding.addActionListener(new ActionListener()
        {
            public void actionPerformed(ActionEvent e)
            {
        int countfull=0;
        int countvalid=0;
         boolean checkEmptyName=true;
         boolean checkExistingName=true;
        boolean checkName=true;
        //SERVICES NAME
        String name=rm.txtServiceName.getText().trim().replaceAll("\\s+", " ").toUpperCase();
        
        if(name.equals("SERVICES NAME*") || name.isEmpty())
        {
            countfull++;
            checkEmptyName=false;
        }
        else if(checkExistingService(name)==true && getStateService(name).equals("0"))
         {
             checkExistingName=false;
             countvalid++;
         }
        else if (name.length()>30)
        {
            countvalid++;
            checkName=false;
        }
        //PRICE

        String price=rm.txtPrice.getText();
        boolean checkEmptyPrice=true;
        boolean checkPrice=true;
         if(price.equals("PRICE*") || price.isEmpty())
        {
            checkEmptyPrice=false;
            countfull++;
        }

        else if (price.trim().replaceAll("\\s+"," ").equals(' '))
        {
            checkPrice=false;
            countvalid++;
        }
        else
        {
        for(int i=0;i<price.length();i++)
        {
            
            if(price.charAt(i)>=48 && price.charAt(i)<=57 )
            {
                checkPrice=true;
            }
            else if(price.charAt(i)==32)
            {
                checkPrice=true;
            }
            else
            {
                checkPrice=false;
                countvalid++;
                break;
            }
          }
         }

        if(countvalid!=0 || countfull!=0)
        {
        rm.setSize(630,295);
        if(checkEmptyPrice==false)
                {
                    rm.lbErrorPriceEmpty.setVisible(true);
                    rm.lbErrorPriceValid.setVisible(false);
                }
                else if(checkPrice==false )
                {
                    rm.lbErrorPriceValid.setVisible(true);
                    rm.lbErrorPriceEmpty.setVisible(false);
                }
                else
                {
                    rm.lbErrorPriceEmpty.setVisible(false);
                    rm.lbErrorPriceValid.setVisible(false);
                }
         if(checkEmptyName==false)
                {
                   
                   rm.lbErrorServiceEmpty.setVisible(true);
                   rm.lbErrorService.setVisible(false);
                }
                else if(checkName==false)
                {
                    rm.lbErrorServiceEmpty.setVisible(false);
                    rm.lbErrorService.setVisible(true);
                }
                else
                {
                    rm.lbErrorServiceEmpty.setVisible(false);
                    rm.lbErrorService.setVisible(false);
                }
               if(checkExistingName==false)
               {
                   rm.lbErrorServiceExisting.setVisible(true);
               }
               else
               {
                   rm.lbErrorServiceExisting.setVisible(false);
               }
         
        }

      
         if(countvalid==0 && countfull==0)
        {
               if(checkExistingService(name)==true && getStateService(name).equals("1"))
               {
                   rm.setSize(400,295);
                   ReActiveService(getIDService(name), price, "0");
                   getInforServices();
                   JOptionPane.showMessageDialog(null,"SUCCESSFUL","BINGO!",JOptionPane.PLAIN_MESSAGE,new ImageIcon("C:\\Users\\USER\\Desktop\\Môn Lớp\\Kĩ Thuật phần mềm\\Image\\icons8_good_quality_32.png"));
               }
               else
               {
                   rm.setSize(400,295);
                   createServices(name, price,"0");
                   getInforServices();
                   JOptionPane.showMessageDialog(null,"SUCCESSFUL","BINGO!",JOptionPane.PLAIN_MESSAGE,new ImageIcon("C:\\Users\\USER\\Desktop\\Môn Lớp\\Kĩ Thuật phần mềm\\Image\\icons8_good_quality_32.png"));
               }
          
         //NAME
           rm.txtServiceName.setFont(new Font("Dubai Light", Font.ITALIC, 16));
           rm.txtServiceName.setForeground(new Color(51,51,51));
           rm.txtServiceName.setText("SERVICES NAME*"); 
          
           //USERNAME
           rm.txtPrice.setFont(new Font("Dubai Light", Font.ITALIC, 16));
           rm.txtPrice.setForeground(new Color(51,51,51));
           rm.txtPrice.setText("PRICE*");   

          } 
            
            }
        });
    }//GEN-LAST:event_btAddActionPerformed

    private void tbServiceMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tbServiceMouseClicked
            // TODO add your handling code here:
        DefaultTableModel dtm=(DefaultTableModel)tbService.getModel();
        int index=tbService.getSelectedRow();
        if (evt.getClickCount()==2)
        {
            AddServices a=new AddServices();
            a.setVisible(true);
                    
        //Dinh Dang lai Form dang ki
        a.btAdding.setVisible(false);
        a.lbAdding.setVisible(false);

        a.btUpdate.setVisible(true);
        a.lbUpdate.setVisible(true);
        a.btDelete.setVisible(true);
        a.lbDelete.setVisible(true);
        a.panelRegister.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.LOWERED, java.awt.Color.black, java.awt.Color.black, java.awt.Color.black, java.awt.Color.black), "Updating", javax.swing.border.TitledBorder.CENTER, javax.swing.border.TitledBorder.TOP, new java.awt.Font("Dialog", 1, 24), new java.awt.Color(255, 255, 102)));
        
        //SET GIÁ TRỊ CHO CÁC TRƯỜNG
        //ID
        String id=String.valueOf(tbService.getValueAt(index, 0));
         
        //NAME
        a.txtServiceName.setText(String.valueOf(tbService.getValueAt(index, 1)));
        a.txtServiceName.setForeground(Color.black);
        a.txtServiceName.setFont(new Font("Diaglog",Font.BOLD,16));
        String checkNameService=String.valueOf(tbService.getValueAt(index, 1));
        
        
        //USERNAME
        a.txtPrice.setText(String.valueOf(tbService.getValueAt(index, 2)));
        a.txtPrice.setFont(new Font("Dialog",Font.BOLD,16));
        a.txtPrice.setForeground(Color.black);

      
        a.btUpdate.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent arg0) {
                         int countfull=0;
                         int countvalid=0;

                        //NAME
                        boolean checkEmptyName=true;
                        boolean checkName=true;
                        boolean checkExistingName=true;
                        String name=a.txtServiceName.getText().trim().replaceAll("\\s+", " ").toUpperCase();

                        if(name.equals("SERVICES NAME*") || name.isEmpty())
                        {
                            countfull++;
                            checkEmptyName=false;
                        }
                        else if (name.length()>30)
                        {
                            countvalid++;
                            checkName=false;
                        }

                        if(!name.equals(checkNameService))
                        {
                            if(checkExistingService(name)==true )
                            {
                                checkExistingName=false;
                                countvalid++;
                                
                            }
                        }
                        
                   //PRICE
        String price=a.txtPrice.getText();
        boolean checkEmptyPrice=true;
        boolean checkPrice=true;
         if(price.equals("PRICE*") || price.isEmpty())
        {
            checkEmptyPrice=false;
            countfull++;
        }

        else if (price.trim().replaceAll("\\s+"," ").equals(' '))
        {
            checkPrice=false;
            countvalid++;
        }
        else
        {
        for(int i=0;i<price.length();i++)
        {
            
            if(price.charAt(i)>=48 && price.charAt(i)<=57 )
            {
                checkPrice=true;
            }
            else if(price.charAt(i)==32)
            {
                checkPrice=true;
            }
            else
            {
                checkPrice=false;
                countvalid++;
                break;
            }
          }
         }
       
         

          if(countvalid!=0 || countfull!=0)
        {
        a.setSize(630, 295);
        if(checkEmptyPrice==false)
                {
                    a.lbErrorPriceEmpty.setVisible(true);
                    a.lbErrorPriceValid.setVisible(false);
                }
                else if(checkPrice==false )
                {
                    a.lbErrorPriceValid.setVisible(true);
                    a.lbErrorPriceEmpty.setVisible(false);
                }
                else
                {
                    a.lbErrorPriceEmpty.setVisible(false);
                   a.lbErrorPriceValid.setVisible(false);
                }
         if(checkEmptyName==false)
                {
                   
                   a.lbErrorServiceEmpty.setVisible(true);
                  a.lbErrorService.setVisible(false);
                }
                else if(checkName==false)
                {
                   a.lbErrorServiceEmpty.setVisible(false);
                  a.lbErrorService.setVisible(true);
                }
                else
                {
                    a.lbErrorServiceEmpty.setVisible(false);
                    a.lbErrorService.setVisible(false);
                }
         if(checkExistingName==false)
         {
             a.lbErrorServiceExisting.setVisible(true);
         }
         else
         {
             a.lbErrorServiceExisting.setVisible(false);
         }
        }
                if(countfull==0 && countvalid==0)
                {
                    updateService(name, price, id);
                     a.setSize(405, 295);
                     a.dispose();
                    JOptionPane.showMessageDialog(null,"SUCCESSFUL","BINGO!",JOptionPane.PLAIN_MESSAGE,new ImageIcon("C:\\Users\\USER\\Desktop\\Môn Lớp\\Kĩ Thuật phần mềm\\Image\\icons8_good_quality_32.png"));
                    getInforServices();
                }
         


                   }
        });
        
        a.btDelete.addActionListener(new ActionListener()
        {
            public void actionPerformed(ActionEvent e)
            {
                if(checkExistServiceInDetail(id)==true)
                {
                     JOptionPane.showMessageDialog(null, "YOUR SERVICE'S USED! YOU CAN'T LOCK UP","ERROR",JOptionPane.ERROR_MESSAGE);
                }
                else
                {
               updateStatusService("1", id);
               JOptionPane.showMessageDialog(null,"SUCCESSFUL","BINGO!",JOptionPane.PLAIN_MESSAGE,new ImageIcon("C:\\Users\\USER\\Desktop\\Môn Lớp\\Kĩ Thuật phần mềm\\Image\\icons8_good_quality_32.png"));
               a.dispose();
               getInforServices();
                }
            }
        });
        }
    }//GEN-LAST:event_tbServiceMouseClicked
 public boolean checkExistServiceInDetail(String serviceID)
   {
      setCheck(false);
        try {

            Connection c=Connect();
            String sql="Select MADV from ChiTietDichVu";
            PreparedStatement pr=c.prepareStatement(sql);
            ResultSet rs=pr.executeQuery();
            while(rs.next())
            {
               if(rs.getString(1).equals(serviceID))
               {
                   setCheck(true);
                   break;
               }
            }
        } catch (SQLException ex) {
            System.out.print("hehe");
        }
        return isCheck();
   }
   public void deleteService(String id)
     {
         Connection c=Connect();
         String sql="delete from DichVu where MADV=?";
         PreparedStatement pr;
    try {
         pr = c.prepareStatement(sql);
         pr.setString(1, id);
            pr.executeUpdate();
            pr.close();
            c.close();
    } catch (SQLException ex) {
        Logger.getLogger(updateService.class.getName()).log(Level.SEVERE, null, ex);
    }
           
        
     }
    public void getInforServices()
    {
        DefaultTableModel dtm=(DefaultTableModel)tbService.getModel();
        dtm.setRowCount(0);
        tbService.setModel(dtm);
        tbService.getColumnModel().getColumn(0).setPreferredWidth(10);
        tbService.getColumnModel().getColumn(1).setPreferredWidth(300);
        tbService.getColumnModel().getColumn(2).setPreferredWidth(100);
        tbService.setRowHeight(30);
        tbService.setAutoResizeMode(tbService.AUTO_RESIZE_LAST_COLUMN);
        Connection c=Connecting.Connect();
        String sql="Select * from DichVu";
        Vector v;
        try {
            PreparedStatement pr=c.prepareStatement(sql);
            ResultSet rs=pr.executeQuery();
            while(rs.next())
            {
                if(rs.getString(4).equals("0"))
                {
                v=new Vector();
                v.add(rs.getString(1));
                v.add(rs.getString(2));
                v.add(rs.getString(3));
                dtm.addRow(v);
                }
            }
            tbService.setModel(dtm);
            rs.close();
            pr.close();
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(upDateStaffPanel.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    public boolean checkExistingService(String nameService)
    {
        setCheck(false);
              try {
            Connection c=Connect();
            //TRUY SUẤT CÓ DẤU NÊN PHẢI DÙNG LỆNH KHÁC 
            String sql="Select TENDV from DichVu";
            PreparedStatement pr=c.prepareStatement(sql);
            ResultSet rs=pr.executeQuery();
            while(rs.next())
            {
                if(rs.getString(1).equals(nameService))
                {
                    setCheck(true);
                    break;
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(updateGuestCar.class.getName()).log(Level.SEVERE, null, ex);
        }
        return isCheck();
    }
        public boolean checkExistingServiceWithUpdate(String nameService)
    {
        setCheck(false);
              try {
            Connection c=Connect();
            //TRUY SUẤT CÓ DẤU NÊN PHẢI DÙNG LỆNH KHÁC 
            String sql="Select TENDV from DichVu where TENDV NOT LIKE N'%"+nameService+"%'";
            PreparedStatement pr=c.prepareStatement(sql);
            ResultSet rs=pr.executeQuery();
            while(rs.next())
            {
                if(rs.getString(1).equals(nameService))
                {
                    setCheck(true);
                    break;
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(updateGuestCar.class.getName()).log(Level.SEVERE, null, ex);
        }
        return isCheck();
    }
  private void updateService(String name,String price,String idService)
  {
   Connection c=Connect();
   String sql="update DichVu set TENDV=?,DONGIA=? where MADV=' "+idService+"'";
        try {
            PreparedStatement pr=c.prepareStatement(sql);
            pr.setString(1, name);
            pr.setString(2, price);
            pr.executeUpdate();
            pr.close();
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(RegisterMember.class.getName()).log(Level.SEVERE, null, ex);
        }
     
 }
    private void updateStatusService(String status,String idService)
  {
   Connection c=Connect();
   String sql="update DichVu set TRANGTHAI=? where MADV=' "+idService+"'";
        try {
            PreparedStatement pr=c.prepareStatement(sql);
            pr.setString(1, status);
            pr.executeUpdate();
            pr.close();
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(RegisterMember.class.getName()).log(Level.SEVERE, null, ex);
        }
     
 }
     private void ReActiveService(String idService,String price,String status)
  {
   Connection c=Connect();
   String sql="update DichVu set DONGIA=?,TRANGTHAI=? where MADV=' "+idService+"'";
        try {
            PreparedStatement pr=c.prepareStatement(sql);
            pr.setString(1, price);
            pr.setString(2, status);
            pr.executeUpdate();
            pr.close();
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(RegisterMember.class.getName()).log(Level.SEVERE, null, ex);
        }
     
 }
  public String getNameServiceFromId(String idService)
{
        try {
            Connection c=Connect();
            //TRUY SUẤT CÓ DẤU NÊN PHẢI DÙNG LỆNH KHÁC 
            String sql="Select TENDV from DichVu where MADV='"+idService+"'";
            PreparedStatement pr=c.prepareStatement(sql);
            ResultSet rs=pr.executeQuery();
            while(rs.next())
            {
                setGetEverything(rs.getString(1));
            }
        } catch (SQLException ex) {
            Logger.getLogger(updateGuestCar.class.getName()).log(Level.SEVERE, null, ex);
        }
        return getGetEverything();
}
  private void createServices(String serviceName,String price,String status)
    {
        try {
            Connection connect=Connect();
            String sql1=" insert into DichVu values (?,?,?)";
            PreparedStatement pr1=connect.prepareStatement(sql1);
            pr1.setString(1, serviceName);
            pr1.setString(2, price);
            pr1.setString(3,status);
            pr1.executeUpdate();
            pr1.close();
            connect.close();
        } catch (SQLException ex) {
            Logger.getLogger(RegisterMember.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
  private String getPriceService(String idService)
  {
              try {
            Connection connect=Connect();
            String sql=" select DONGIA from DichVu Where MADV='"+idService+"'";
            PreparedStatement pr=connect.prepareStatement(sql);
            ResultSet rs=pr.executeQuery();
            while(rs.next())
            {
                setGetEverything(rs.getString(1));
            }
            pr.close();
            connect.close();
        } catch (SQLException ex) {
            Logger.getLogger(RegisterMember.class.getName()).log(Level.SEVERE, null, ex);
        }
      
      return getGetEverything();
  }
    private String getIDService(String nameService)
  {
              try {
            Connection connect=Connect();
            String sql=" select MADV from DichVu Where TENDV like N'%"+nameService+"%'";
            PreparedStatement pr=connect.prepareStatement(sql);
            ResultSet rs=pr.executeQuery();
            while(rs.next())
            {
                setGetEverything(rs.getString(1));
            }
            pr.close();
            connect.close();
        } catch (SQLException ex) {
            Logger.getLogger(RegisterMember.class.getName()).log(Level.SEVERE, null, ex);
        }
      
      return getGetEverything();
  }
        private String getStateService(String nameService)
  {
              try {
            Connection connect=Connect();
            String sql=" select TRANGTHAI from DichVu Where TENDV like N'%"+nameService+"%'";
            PreparedStatement pr=connect.prepareStatement(sql);
            ResultSet rs=pr.executeQuery();
            while(rs.next())
            {
                setGetEverything(rs.getString(1));
            }
            pr.close();
            connect.close();
        } catch (SQLException ex) {
            Logger.getLogger(RegisterMember.class.getName()).log(Level.SEVERE, null, ex);
        }
      
      return getGetEverything();
  }
      public static void main(String args[]) {
          JFrame a=new JFrame();
          updateService b=new updateService();
          a.add(b);
          a.setVisible(true);
          a.pack();
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btAdd;
    public javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JLabel lbLogo;
    private javax.swing.JLabel lbSearching;
    private javax.swing.JLabel lbServiceIcon;
    private javax.swing.JTable tbService;
    private javax.swing.JTextField txtSearching;
    // End of variables declaration//GEN-END:variables
}