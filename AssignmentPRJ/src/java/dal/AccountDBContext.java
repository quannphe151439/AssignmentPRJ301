/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;

/**
 *
 * @author Sap-lap
 */
public class AccountDBContext extends DBContext {

    public Account getAccount(String username, String password) {
        try {
            String sql = "SELECT username,password,bid FROM Account WHERE username = ? AND password = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Account account = new Account();
                account.setUsername(rs.getString("username"));
                account.setPassword(rs.getString("password"));
                account.setBid(rs.getString("bid"));
                return account;
            }

        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public boolean checkBid(String bid) {  //check bid có tồn tại có thì trả về true, ko thì false
        try {
            String sql = "SELECT bid FROM Account where bid=? ";
            
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, bid);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean checkUsername(String username) {  //check user đã tồn tại thì true, chưa thì false
        
        try {
            String sql = "SELECT username FROM Account where username=? ";
            
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
//    public String getBid(String username) {
//        String bid="";
//        try {
//            String sql = "SELECT bid FROM Account where username=? ";
//            PreparedStatement stm = connection.prepareStatement(sql);
//            stm.setString(1, username);
//            ResultSet rs = stm.executeQuery();
//            if (rs.next()) {
//                bid=rs.getString("bid");
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return bid;
//    }
//    public int checkRole(String username, String url)
//    {
//        try {
//            String sql = "SELECT COUNT(*) as Total \n" +
//                "	FROM Account a INNER JOIN Account_Group ag ON a.username = ag.username\n" +
//                "					INNER JOIN [Group] g ON ag.gid = g.gid\n" +
//                "					INNER JOIN Group_Feature gf ON gf.gid = g.gid\n" +
//                "					INNER JOIN Feature f ON f.fid = gf.fid\n" +
//                "	WHERE a.username = ? AND f.url = ?";
//            PreparedStatement stm = connection.prepareStatement(sql);
//            stm.setString(1,username);
//            stm.setString(2, url);
//            ResultSet rs = stm.executeQuery();
//            if(rs.next())
//            {
//                return rs.getInt("Total");
//            }
//            
//        } catch (SQLException ex) {
//            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return -1;
//    }
    
    public void insertAccount(Account a) {
        String sql = "insert into Account(username,password,bid) values(?,?,?)";
        PreparedStatement stm = null;
        try {
            stm = connection.prepareStatement(sql);
            stm.setString(1, a.getUsername());
            stm.setString(2, a.getPassword());
            stm.setString(3, a.getBid());
            stm.executeUpdate(); //INSERT UPDATE DELETE
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (stm != null) {
                try {
                    stm.close();
                } catch (SQLException ex) {
                    Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException ex) {
                    Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }
}
