/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Bill;
import model.BillDetail;

/**
 *
 * @author Quan
 */
public class SellDBContext extends DBContext {

    public void insertImport(Bill b, ArrayList<BillDetail> list) {
        String sql = "INSERT INTO [dbo].[Bill]\n"
                + "           ([billcode]\n"
                + "           ,[bid]\n"
                + "           ,[name]\n"
                + "           ,[phone]\n"
                + "           ,[address]\n"
                + "           ,[payment]\n"
                + "		   ,[debt]\n"
                + "		   ,[total]\n"
                + "           ,[paytype])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "		   ,?\n"
                + "		   ,?\n"
                + "           ,?)";
        PreparedStatement stm = null;
        try {
            connection.setAutoCommit(false);
            stm = connection.prepareStatement(sql);
            stm.setString(1, b.getBillcode());
            stm.setString(2, b.getBid().getBid());
            stm.setString(3, b.getName());
            stm.setString(4, b.getPhone());
            stm.setString(5, b.getAddress());
            stm.setInt(5, b.getPayment());
            stm.setInt(6, b.getDebt());
            stm.setInt(7, b.getTotal());
            stm.setString(8, b.getPaytype());
            stm.executeUpdate(); //INSERT UPDATE DELETE
            for (BillDetail detail : list) {
                String insert_detail = "INSERT INTO [dbo].[BillDetail]\n"
                        + "           ([bid]\n"
                        + "           ,[billcode]\n"
                        + "           ,[product]\n"
                        + "           ,[quantity]\n"
                        + "           ,[unitprice]\n"
                        + "           ,[price]\n"
                        + "           ,[describe])\n"
                        + "     VALUES\n"
                        + "           (?\n"
                        + "           ,?\n"
                        + "           ,?\n"
                        + "           ,?\n"
                        + "           ,?\n"
                        + "           ,?\n"
                        + "           ,?)";
                PreparedStatement stm_detail = connection.prepareStatement(insert_detail);
                stm_detail.setString(1, detail.getBid().getBid());
                stm_detail.setString(2, detail.getBillcode().getBillcode());
                stm_detail.setString(3, detail.getProduct());
                stm_detail.setInt(4, detail.getQuantity());
                stm_detail.setInt(5, detail.getUnitprice());
                stm_detail.setInt(6, detail.getPrice());
                stm_detail.setString(7, detail.getDescribe());
                stm_detail.executeUpdate();
            }

        } catch (SQLException ex) {
            Logger.getLogger(SellDBContext.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (stm != null) {
                try {
                    stm.close();
                } catch (SQLException ex) {
                    Logger.getLogger(SellDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            try {
                connection.setAutoCommit(true);
            } catch (SQLException ex) {
                Logger.getLogger(SellDBContext.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException ex) {
                    Logger.getLogger(SellDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }
    
    
}
