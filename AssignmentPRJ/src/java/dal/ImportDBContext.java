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
import model.Import;
import model.ImportDetail;

/**
 *
 * @author Quan
 */
public class ImportDBContext extends DBContext {

    public void insertImport(Import a, ArrayList<ImportDetail> m) {
        String sql = "INSERT INTO [dbo].[Import]\n"
                + "           ([iid]\n"
                + "           ,[bid]\n"
                + "           ,[iname]\n"
                + "           ,[iphone]\n"
                + "           ,[iaddress]\n"
                + "           ,[iconfirm]\n"
                + "           ,[itotal]\n"
                + "           ,[idebt]\n"
                + "           ,[payment]\n"
                + "           ,[time])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,CURRENT_TIMESTAMP)";
        PreparedStatement stm = null;
        try {
            connection.setAutoCommit(false);
            stm = connection.prepareStatement(sql);
            stm.setInt(1, a.getIid());
            stm.setString(2, a.getBid().getBid().trim());
            stm.setString(3, a.getIname());
            stm.setString(4, a.getIphone());
            stm.setString(5, a.getIaddress());
            stm.setString(6, a.getIconfirm());
            stm.setInt(7, a.getItotal());
            stm.setInt(8, a.getIdebt());
            stm.setInt(9, a.getPayment());
            stm.executeUpdate(); //INSERT UPDATE DELETE
            for (ImportDetail detail : m) {
                String insert_detail = "insert into ImportDetail(iid,product,quantity,unitprice,price,describe) values(?,?,?,?,?,?)";
                PreparedStatement stm_insert_detail
                        = connection.prepareStatement(insert_detail);      
                stm_insert_detail.setInt(1, detail.getIid().getIid());
                stm_insert_detail.setString(2, detail.getIproduct());
                stm_insert_detail.setInt(3, detail.getIquantity());
                stm_insert_detail.setInt(4, detail.getIunitprice());
                stm_insert_detail.setInt(5, detail.getIprice());
                stm_insert_detail.setString(6, detail.getIdescribe());
                stm_insert_detail.executeUpdate();
            }

        } catch (SQLException ex) {
            Logger.getLogger(ImportDBContext.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (stm != null) {
                try {
                    stm.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ImportDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            try {
                connection.setAutoCommit(true);
            } catch (SQLException ex) {
                Logger.getLogger(ImportDBContext.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ImportDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }

    public int getIid() {
        int count = 0;
        try {
            String sql = "SELECT count(*) geta FROM Import";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                count = rs.getInt("geta");
            }
        } catch (SQLException ex) {
            Logger.getLogger(ImportDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count + 1;
    }
}
