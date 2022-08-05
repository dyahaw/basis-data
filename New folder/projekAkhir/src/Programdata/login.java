/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Programdata;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

public class login extends javax.swing.JFrame {

    Connection conn = null;
    Statement st = null;

    public login() {
        initComponents();

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            System.out.println("Class Driver ditemukan");
            try {
                String url = "jdbc:sqlserver://AGUNG\\DBSS061:1433;databaseName=Projek";
                String user = "admin";
                String password = "admin123";
                conn = DriverManager.getConnection(url, user, password);
                System.out.println("sukses");
                //st=conn.createStatement();
                //JOptionPane.showMessageDialog(null, "Berhasil Terkoneksi");
            } catch (SQLException e) {
                System.out.println("Error " + e);
                System.exit(0);
            }
        } catch (ClassNotFoundException cnfe) {
            System.out.println("Error " + cnfe);
            System.exit(0);
        }
    }

    private void CekLogin() {
        try {
            if (pilih.getSelectedItem() == "Karyawan") {
                if (txtNohp.getText().equals("") || txtPass.getPassword().equals("")) {
                    JOptionPane.showMessageDialog(rootPane, "Silakan Masukkan No Hp dan Katasandi", "Pesan", JOptionPane.ERROR_MESSAGE);
                    txtNohp.requestFocus();
                    txtPass.requestFocus();
                    HapusLayar();
                } else {
                    st = conn.createStatement();
                    String sql;
                    String username = "admin";
                    String pass = "admin";
                    if (username.equalsIgnoreCase(txtNohp.getText()) && pass.equalsIgnoreCase(String.valueOf(txtPass.getPassword()))) {
                        this.setVisible(false);
                        new registrasi().setVisible(true);
                    } else {
                        sql = ("SELECT NoHp_Karyawan, Pass FROM Karyawan WHERE NoHp_Karyawan= '" + txtNohp.getText() + "'AND Pass= '" + String.valueOf(txtPass.getPassword())
                                + "'  ");

                        ResultSet rs = st.executeQuery(sql);
//                    System.out.println(rs.getString("ID"));
                        if (rs.next()) {
                            this.dispose();
                            new menu().setVisible(true);
                        } else {
                            JOptionPane.showMessageDialog(rootPane, "No Hp dan Password Salah \nAtau Akun Belum Terdaftar", "Pesan", JOptionPane.ERROR_MESSAGE);
                            HapusLayar();
                        }
                    }
                }
            } else {
                if (txtNohp.getText().equals("") || txtPass.getPassword().equals("")) {
                    JOptionPane.showMessageDialog(rootPane, "Silakan Masukkan No Hp dan Katasandi", "Pesan", JOptionPane.ERROR_MESSAGE);
                    txtNohp.requestFocus();
                    txtPass.requestFocus();
                    HapusLayar();
                } else {
                    st = conn.createStatement();
                    String sql;
                    String username = "admin";
                    String pass = "admin";
                    if (username.equalsIgnoreCase(txtNohp.getText()) && pass.equalsIgnoreCase(String.valueOf(txtPass.getPassword()))) {
                        this.setVisible(false);
                        new registrasi().setVisible(true);
                    } else {
                        sql = ("SELECT NoHp, Pass FROM Users WHERE NoHp= '" + txtNohp.getText() + "'AND Pass = '" + String.valueOf(txtPass.getPassword())
                                + "'  ");

                        ResultSet rs = st.executeQuery(sql);
//                    System.out.println(rs.getString("ID"));
                        if (rs.next()) {
                            this.dispose();
                            new menu().setVisible(true);
                        } else {
                            JOptionPane.showMessageDialog(rootPane, "No Hp dan Password Salah \nAtau Akun Belum Terdaftar", "Pesan", JOptionPane.ERROR_MESSAGE);
                            HapusLayar();
                        }
                    }
                }
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void HapusLayar() {
        txtNohp.setText("");
        txtPass.setText("");
        txtNohp.setEnabled(true);
        txtPass.setEnabled(true);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        btnLogin = new javax.swing.JButton();
        btnBack = new javax.swing.JButton();
        txtNohp = new javax.swing.JTextField();
        txtPass = new javax.swing.JPasswordField();
        btnDaftar = new javax.swing.JButton();
        pilih = new javax.swing.JComboBox<>();
        jLabel3 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 13)); // NOI18N
        jLabel1.setText("No Hp");

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 13)); // NOI18N
        jLabel2.setText("Password");

        btnLogin.setFont(new java.awt.Font("Tahoma", 1, 13)); // NOI18N
        btnLogin.setText("MASUK");
        btnLogin.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnLoginActionPerformed(evt);
            }
        });

        btnBack.setFont(new java.awt.Font("Tahoma", 1, 13)); // NOI18N
        btnBack.setText("KEMBALI");

        txtNohp.setFont(new java.awt.Font("Tahoma", 0, 13)); // NOI18N

        txtPass.setFont(new java.awt.Font("Tahoma", 0, 13)); // NOI18N

        btnDaftar.setFont(new java.awt.Font("Tahoma", 1, 13)); // NOI18N
        btnDaftar.setText("REGISTRASI");
        btnDaftar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnDaftarActionPerformed(evt);
            }
        });

        pilih.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        pilih.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Pelanggan", "Karyawan" }));

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel3.setText("MASUK");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addGap(0, 0, Short.MAX_VALUE)
                .addComponent(pilih, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(21, 21, 21)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 41, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 72, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(35, 35, 35)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(txtNohp, javax.swing.GroupLayout.PREFERRED_SIZE, 130, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txtPass, javax.swing.GroupLayout.PREFERRED_SIZE, 130, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(106, 106, 106)
                        .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 85, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(94, 94, 94)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(btnDaftar)
                            .addComponent(btnLogin, javax.swing.GroupLayout.PREFERRED_SIZE, 115, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btnBack, javax.swing.GroupLayout.PREFERRED_SIZE, 115, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addContainerGap(34, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(pilih, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(10, 10, 10)
                .addComponent(jLabel3)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 46, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtNohp, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel1))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(txtPass, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(33, 33, 33)
                .addComponent(btnLogin)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnDaftar)
                .addGap(11, 11, 11)
                .addComponent(btnBack)
                .addGap(22, 22, 22))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnLoginActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnLoginActionPerformed
        // TODO add your handling code here:

        CekLogin();
    }//GEN-LAST:event_btnLoginActionPerformed

    private void btnDaftarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnDaftarActionPerformed
        // TODO add your handling code here:
        this.setVisible(false);
        new registrasi().setVisible(true);
    }//GEN-LAST:event_btnDaftarActionPerformed

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
            java.util.logging.Logger.getLogger(login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new login().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnBack;
    private javax.swing.JButton btnDaftar;
    private javax.swing.JButton btnLogin;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JComboBox<String> pilih;
    private javax.swing.JTextField txtNohp;
    private javax.swing.JPasswordField txtPass;
    // End of variables declaration//GEN-END:variables
}
