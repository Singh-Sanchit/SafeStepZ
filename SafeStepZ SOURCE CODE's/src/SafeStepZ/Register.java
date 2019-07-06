/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SafeStepZ;

import java.awt.HeadlessException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.regex.Pattern;
import javax.swing.JOptionPane;

/**
 *
 * @author akash
 */
public class Register extends javax.swing.JFrame {

    static Connection conn = null;

    /**
     * Creates new form Register
     */
    public Register(Connection conn) {
        initComponents();
        setLocationRelativeTo(null);
        this.conn = conn;
        if (!(governmentid.getText() == null && fullname.getText() == null && age.getText() == null && gender.getText() == null && adhar.getText() == null && emailid.getText() == null && password.getPassword() == null && retypepassword.getPassword() == null)) {
            register.setEnabled(false);
        } else {
            register.setEnabled(true);
        }
        if (!agreeterms.isSelected()) {
            register.setEnabled(false);
        } else {
            register.setEnabled(true);
        }
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jSeparator3 = new javax.swing.JSeparator();
        jTextField4 = new javax.swing.JTextField();
        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        agreeterms = new javax.swing.JCheckBox();
        register = new javax.swing.JButton();
        jSeparator1 = new javax.swing.JSeparator();
        governmentid = new javax.swing.JTextField();
        jSeparator2 = new javax.swing.JSeparator();
        fullname = new javax.swing.JTextField();
        jSeparator4 = new javax.swing.JSeparator();
        adhar = new javax.swing.JTextField();
        jSeparator5 = new javax.swing.JSeparator();
        emailid = new javax.swing.JTextField();
        jSeparator6 = new javax.swing.JSeparator();
        jSeparator7 = new javax.swing.JSeparator();
        jSeparator8 = new javax.swing.JSeparator();
        jSeparator9 = new javax.swing.JSeparator();
        age = new javax.swing.JTextField();
        gender = new javax.swing.JTextField();
        retypepassword = new javax.swing.JPasswordField();
        password = new javax.swing.JPasswordField();
        jLabel15 = new javax.swing.JLabel();
        jLabel16 = new javax.swing.JLabel();
        jLabel17 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        jLabel13 = new javax.swing.JLabel();
        jLabel14 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();

        jTextField4.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jTextField4.setText("Enter Your Government ID");
        jTextField4.setBorder(null);

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setBackground(new java.awt.Color(255, 255, 255));
        setPreferredSize(new java.awt.Dimension(876, 585));
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel1.setBackground(new java.awt.Color(53, 33, 89));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel2.setBackground(new java.awt.Color(255, 255, 255));
        jPanel2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel3.setBackground(new java.awt.Color(94, 47, 198));

        jLabel1.setFont(new java.awt.Font("Century Gothic", 1, 48)); // NOI18N
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("REGISTRATION");

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1, javax.swing.GroupLayout.DEFAULT_SIZE, 520, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        jPanel2.add(jPanel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 25, 540, -1));

        jLabel2.setFont(new java.awt.Font("Candara", 0, 20)); // NOI18N
        jLabel2.setText("Government ID : ");
        jPanel2.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 130, 150, 40));

        jLabel3.setFont(new java.awt.Font("Candara", 0, 20)); // NOI18N
        jLabel3.setText("Full Name :");
        jPanel2.add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 179, 166, 24));

        jLabel4.setFont(new java.awt.Font("Candara", 0, 20)); // NOI18N
        jLabel4.setText("Age :");
        jPanel2.add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 221, 98, 26));

        jLabel5.setFont(new java.awt.Font("Candara", 0, 20)); // NOI18N
        jLabel5.setText("Gender :");
        jPanel2.add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(250, 220, 85, -1));

        jLabel6.setFont(new java.awt.Font("Candara", 0, 20)); // NOI18N
        jLabel6.setText("Adhar Number :");
        jPanel2.add(jLabel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 265, 166, 27));

        jLabel7.setFont(new java.awt.Font("Candara", 0, 20)); // NOI18N
        jLabel7.setText("Email ID :");
        jPanel2.add(jLabel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 300, 150, 40));

        jLabel8.setFont(new java.awt.Font("Candara", 0, 20)); // NOI18N
        jLabel8.setText("Password :");
        jPanel2.add(jLabel8, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 355, 166, 26));

        jLabel9.setFont(new java.awt.Font("Candara", 0, 20)); // NOI18N
        jLabel9.setText("Re-Enter Password :");
        jPanel2.add(jLabel9, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 399, -1, 28));

        agreeterms.setFont(new java.awt.Font("Candara", 0, 18)); // NOI18N
        agreeterms.setSelected(true);
        agreeterms.setText("I agree with the Terms & Condition");
        agreeterms.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                agreetermsActionPerformed(evt);
            }
        });
        jPanel2.add(agreeterms, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 454, 301, -1));

        register.setBackground(new java.awt.Color(82, 27, 245));
        register.setFont(new java.awt.Font("Candara", 0, 20)); // NOI18N
        register.setText("Register");
        register.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        register.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                registerActionPerformed(evt);
            }
        });
        jPanel2.add(register, new org.netbeans.lib.awtextra.AbsoluteConstraints(214, 492, 129, 35));
        jPanel2.add(jSeparator1, new org.netbeans.lib.awtextra.AbsoluteConstraints(180, 160, 326, 10));

        governmentid.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        governmentid.setText("Enter Your Government ID");
        governmentid.setBorder(null);
        governmentid.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                governmentidMouseClicked(evt);
            }
        });
        governmentid.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                governmentidActionPerformed(evt);
            }
        });
        jPanel2.add(governmentid, new org.netbeans.lib.awtextra.AbsoluteConstraints(180, 130, 330, 30));
        jPanel2.add(jSeparator2, new org.netbeans.lib.awtextra.AbsoluteConstraints(180, 200, 326, 10));

        fullname.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        fullname.setText("Enter Your Full Name");
        fullname.setBorder(null);
        fullname.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                fullnameMouseClicked(evt);
            }
        });
        jPanel2.add(fullname, new org.netbeans.lib.awtextra.AbsoluteConstraints(180, 170, 330, 30));
        jPanel2.add(jSeparator4, new org.netbeans.lib.awtextra.AbsoluteConstraints(180, 290, 326, 10));

        adhar.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        adhar.setText("Enter Your Adhar Number");
        adhar.setBorder(null);
        adhar.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                adharMouseClicked(evt);
            }
        });
        jPanel2.add(adhar, new org.netbeans.lib.awtextra.AbsoluteConstraints(180, 260, 330, 30));
        jPanel2.add(jSeparator5, new org.netbeans.lib.awtextra.AbsoluteConstraints(180, 330, 326, 10));

        emailid.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        emailid.setText("Enter Your Email ID");
        emailid.setBorder(null);
        emailid.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                emailidFocusLost(evt);
            }
        });
        emailid.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                emailidMouseClicked(evt);
            }
        });
        emailid.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                emailidActionPerformed(evt);
            }
        });
        jPanel2.add(emailid, new org.netbeans.lib.awtextra.AbsoluteConstraints(180, 300, 330, 30));
        jPanel2.add(jSeparator6, new org.netbeans.lib.awtextra.AbsoluteConstraints(180, 380, 326, 10));
        jPanel2.add(jSeparator7, new org.netbeans.lib.awtextra.AbsoluteConstraints(180, 420, 326, 10));
        jPanel2.add(jSeparator8, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 240, 160, 10));
        jPanel2.add(jSeparator9, new org.netbeans.lib.awtextra.AbsoluteConstraints(330, 240, 150, 10));

        age.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        age.setText("Enter Your Age");
        age.setBorder(null);
        age.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                ageMouseClicked(evt);
            }
        });
        jPanel2.add(age, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 210, 160, 30));

        gender.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        gender.setText("        M/F");
        gender.setBorder(null);
        gender.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                genderMouseClicked(evt);
            }
        });
        jPanel2.add(gender, new org.netbeans.lib.awtextra.AbsoluteConstraints(330, 210, 150, 30));

        retypepassword.setBorder(null);
        jPanel2.add(retypepassword, new org.netbeans.lib.awtextra.AbsoluteConstraints(180, 390, 330, 30));

        password.setBorder(null);
        password.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                passwordActionPerformed(evt);
            }
        });
        jPanel2.add(password, new org.netbeans.lib.awtextra.AbsoluteConstraints(180, 350, 330, 30));

        jLabel15.setText("* are mandatory fields");
        jPanel2.add(jLabel15, new org.netbeans.lib.awtextra.AbsoluteConstraints(430, 10, 110, -1));

        jLabel16.setForeground(new java.awt.Color(255, 0, 0));
        jLabel16.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel16.setText("*");
        jLabel16.setToolTipText("");
        jPanel2.add(jLabel16, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 300, 10, 30));

        jLabel17.setForeground(new java.awt.Color(255, 0, 0));
        jLabel17.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel17.setText("*");
        jLabel17.setToolTipText("");
        jPanel2.add(jLabel17, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 134, 10, 20));

        jPanel1.add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(340, 0, 540, 570));

        jLabel11.setFont(new java.awt.Font("Century Gothic", 1, 48)); // NOI18N
        jLabel11.setForeground(new java.awt.Color(255, 204, 0));
        jLabel11.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel11.setText("SAFE");
        jPanel1.add(jLabel11, new org.netbeans.lib.awtextra.AbsoluteConstraints(100, 10, 130, 50));

        jLabel12.setFont(new java.awt.Font("Century Gothic", 1, 48)); // NOI18N
        jLabel12.setForeground(new java.awt.Color(255, 204, 0));
        jLabel12.setText("STEPZ");
        jPanel1.add(jLabel12, new org.netbeans.lib.awtextra.AbsoluteConstraints(180, 50, 130, 60));

        jLabel13.setIcon(new javax.swing.ImageIcon(getClass().getResource("/SafeStepZ/Assets/Images/Logosmall.png"))); // NOI18N
        jLabel13.setBorder(javax.swing.BorderFactory.createMatteBorder(3, 3, 4, 4, new java.awt.Color(255, 204, 0)));
        jPanel1.add(jLabel13, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 30, 90, 60));

        jLabel14.setIcon(new javax.swing.ImageIcon(getClass().getResource("/SafeStepZ/Assets/Images/sidepanel.jpg"))); // NOI18N
        jPanel1.add(jLabel14, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 210, -1, 190));

        jLabel10.setIcon(new javax.swing.ImageIcon(getClass().getResource("/SafeStepZ/Assets/Images/1387359121254-IRLogo_blue.jpg"))); // NOI18N
        jLabel10.setText("jLabel10");
        jPanel1.add(jLabel10, new org.netbeans.lib.awtextra.AbsoluteConstraints(70, 200, 200, 200));

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, -1, 567));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void governmentidActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_governmentidActionPerformed

    }//GEN-LAST:event_governmentidActionPerformed

    private void emailidActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_emailidActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_emailidActionPerformed

    private void governmentidMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_governmentidMouseClicked
        governmentid.setText("");
    }//GEN-LAST:event_governmentidMouseClicked

    private void fullnameMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_fullnameMouseClicked
        fullname.setText("");
    }//GEN-LAST:event_fullnameMouseClicked

    private void ageMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_ageMouseClicked
        age.setText("");
    }//GEN-LAST:event_ageMouseClicked

    private void genderMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_genderMouseClicked
        gender.setText("");
    }//GEN-LAST:event_genderMouseClicked

    private void adharMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_adharMouseClicked
        adhar.setText("");
    }//GEN-LAST:event_adharMouseClicked

    private void emailidMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_emailidMouseClicked
        emailid.setText("");
    }//GEN-LAST:event_emailidMouseClicked

    private void agreetermsActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_agreetermsActionPerformed
        if (!agreeterms.isSelected()) {
            register.setEnabled(false);
        } else {
            register.setEnabled(true);
        }
    }//GEN-LAST:event_agreetermsActionPerformed

    private void registerActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_registerActionPerformed

        String government_id = governmentid.getText();
        String full_name = fullname.getText();
        String age_ = age.getText();
        String gender_ = gender.getText();
        String email = emailid.getText();
        String adhar_no = adhar.getText();
        String password1 = String.valueOf(password.getPassword());
        String retype_password1 = String.valueOf(retypepassword.getPassword());

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = null;
            String dbname = "safestepz";
            try {
                Class.forName("com.mysql.jdbc.Driver");
                String sqlServer = "jdbc:mysql://localhost:3306/" + dbname;
                conn = DriverManager.getConnection(sqlServer, "root", "040916030411");
                System.out.println("Connected");
            } catch (Exception e) {
                System.out.println("Connection Error");
            }

            PreparedStatement ps = null;
            PreparedStatement ps1 = null;
            ResultSet rs = null;
            String dbid = null;
            boolean found = false;
            String query1 = "select GovernmentID from governmentdetails";
            System.out.println(query1);
            String query = "insert into register (FullName,Age,Gender,EmailID,AadharNo,GovernmentID,Password) values(?,?,?,?,?,?,?)";
            ps1 = conn.prepareStatement(query1);
            ps1 = conn.prepareStatement(query1);
            rs = ps1.executeQuery();
            ps = conn.prepareStatement(query);
            ps.setString(1, full_name);
            ps.setString(2, age_);
            ps.setString(3, gender_);
            ps.setString(4, email);
            ps.setString(5, adhar_no);
            ps.setString(6, government_id);
            ps.setString(7, password1);
            while (rs.next()) {
                dbid = rs.getString("GovernmentID");
                if (dbid.equals(government_id)) {
                    found = true;
                }
            }
            if (found) {
                if (password1.equals(retype_password1)) {
                    int i = ps.executeUpdate();

                    if (i > 0) {
                        JOptionPane.showMessageDialog(null, "You have Registered Successfully", "SuccessFull", JOptionPane.INFORMATION_MESSAGE);
                        new LoginForm(conn).setVisible(true);
                        this.setVisible(false);
                    } else {
                        JOptionPane.showMessageDialog(null, "Registration UnSuccessfull", "Error", JOptionPane.ERROR_MESSAGE);
                    }
                } else {
                    JOptionPane.showMessageDialog(null, "Your Password Did not Matched", "Error", JOptionPane.ERROR_MESSAGE);
                }
            } else {
                JOptionPane.showMessageDialog(null, "Your Government ID does not Matches", "Error", JOptionPane.ERROR_MESSAGE);
            }
            if (password.equals("") && retypepassword.equals("")) {
                register.setEnabled(false);
            } else {
                register.setEnabled(true);
            }
        } catch (HeadlessException | ClassNotFoundException | SQLException e) {
            JOptionPane.showMessageDialog(null, "Government ID already used");
        }
        //    catch(HeadlessException | ClassNotFoundException | SQLException e)
    }//GEN-LAST:event_registerActionPerformed

    private void emailidFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_emailidFocusLost
        if (!Pattern.matches("^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,6}$", emailid.getText())) {
            JOptionPane.showMessageDialog(null, "Please Enter a Valid Email ID", "Error", JOptionPane.ERROR_MESSAGE);
            register.setEnabled(false);
        } else {
            register.setEnabled(true);
        }
    }//GEN-LAST:event_emailidFocusLost

    private void passwordActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_passwordActionPerformed

    }//GEN-LAST:event_passwordActionPerformed

    /**
     * @param args the command line arguments
     */
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
            java.util.logging.Logger.getLogger(Register.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Register.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Register.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Register.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Register(conn).setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTextField adhar;
    private javax.swing.JTextField age;
    private javax.swing.JCheckBox agreeterms;
    private javax.swing.JTextField emailid;
    private javax.swing.JTextField fullname;
    private javax.swing.JTextField gender;
    private javax.swing.JTextField governmentid;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JSeparator jSeparator2;
    private javax.swing.JSeparator jSeparator3;
    private javax.swing.JSeparator jSeparator4;
    private javax.swing.JSeparator jSeparator5;
    private javax.swing.JSeparator jSeparator6;
    private javax.swing.JSeparator jSeparator7;
    private javax.swing.JSeparator jSeparator8;
    private javax.swing.JSeparator jSeparator9;
    private javax.swing.JTextField jTextField4;
    private javax.swing.JPasswordField password;
    private javax.swing.JButton register;
    private javax.swing.JPasswordField retypepassword;
    // End of variables declaration//GEN-END:variables
}
