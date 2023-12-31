/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package finals.cs;
import com.formdev.flatlaf.FlatLightLaf;
import java.sql.*;  
import javax.swing.JOptionPane;
import javax.swing.UIManager;

/**
 *
 * @author Ryven
 */
public class AdminLogin extends javax.swing.JFrame {

    /**
     * Creates new form AdminLogin
     */
    
    Connection con = null;
    PreparedStatement statement = null;
    ResultSet result = null;

    
    public AdminLogin() {
        initComponents();
        
        
        try{
            con = DriverManager.getConnection("jdbc:mysql://localhost/csdb","root","");
        }catch(SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        txtEmail = new javax.swing.JTextField();
        txtPassword = new javax.swing.JPasswordField();
        btnAdminLogin = new javax.swing.JButton();
        btnCancel = new javax.swing.JButton();
        jLabel3 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Admin Login");
        setMinimumSize(new java.awt.Dimension(1920, 1080));
        setResizable(false);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        txtEmail.setBackground(new java.awt.Color(255, 248, 232));
        txtEmail.setFont(new java.awt.Font("SansSerif", 0, 24)); // NOI18N
        txtEmail.setToolTipText("Email");
        txtEmail.setBorder(null);
        getContentPane().add(txtEmail, new org.netbeans.lib.awtextra.AbsoluteConstraints(1210, 395, 450, 73));

        txtPassword.setBackground(new java.awt.Color(255, 248, 232));
        txtPassword.setFont(new java.awt.Font("SansSerif", 0, 24)); // NOI18N
        txtPassword.setToolTipText("Password");
        txtPassword.setBorder(null);
        getContentPane().add(txtPassword, new org.netbeans.lib.awtextra.AbsoluteConstraints(1210, 605, 450, 73));

        btnAdminLogin.setBackground(new java.awt.Color(255, 182, 85));
        btnAdminLogin.setFont(new java.awt.Font("SansSerif", 3, 20)); // NOI18N
        btnAdminLogin.setText("Login as admin");
        btnAdminLogin.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAdminLoginActionPerformed(evt);
            }
        });
        getContentPane().add(btnAdminLogin, new org.netbeans.lib.awtextra.AbsoluteConstraints(1200, 710, 480, 73));

        btnCancel.setBackground(new java.awt.Color(117, 52, 34));
        btnCancel.setFont(new java.awt.Font("SansSerif", 1, 20)); // NOI18N
        btnCancel.setForeground(new java.awt.Color(255, 255, 255));
        btnCancel.setText("Cancel");
        btnCancel.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCancelActionPerformed(evt);
            }
        });
        getContentPane().add(btnCancel, new org.netbeans.lib.awtextra.AbsoluteConstraints(1200, 800, 480, 73));

        jLabel3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/ui_components/admin login.png"))); // NOI18N
        getContentPane().add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, -1, -1));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnAdminLoginActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAdminLoginActionPerformed
        PreparedStatement ps;
        ResultSet rs;

        String Email = txtEmail.getText();
        String Password = String.valueOf(txtPassword.getPassword());

        String query = "SELECT * FROM `admin_account` WHERE `email` =? AND `password` =?";

        try{

            ps = con.prepareStatement(query);

            ps.setString(1, Email);
            ps.setString(2, Password);

            rs = ps.executeQuery();

            if (rs.next()) {
                new AdminPanel().setVisible(true);
                this.dispose();
            } else {
               JOptionPane.showMessageDialog(this, "Invalid Credentials","INFORMATION",JOptionPane.ERROR_MESSAGE);
            }

        } catch(SQLException sqlException) {
            sqlException.printStackTrace();
        }
    }//GEN-LAST:event_btnAdminLoginActionPerformed

    private void btnCancelActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCancelActionPerformed
        new Login().setVisible(true);
        this.dispose();
    }//GEN-LAST:event_btnCancelActionPerformed

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
            UIManager.setLookAndFeel( new FlatLightLaf() );
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Splash.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new AdminLogin().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnAdminLogin;
    private javax.swing.JButton btnCancel;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JTextField txtEmail;
    private javax.swing.JPasswordField txtPassword;
    // End of variables declaration//GEN-END:variables
}
