/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Quan
 */
public class AccountStaff {
    private String userStaff;
    private String passStaff;
    private Account bid;

    public String getUserStaff() {
        return userStaff;
    }

    public void setUserStaff(String userStaff) {
        this.userStaff = userStaff;
    }

    public String getPassStaff() {
        return passStaff;
    }

    public void setPassStaff(String passStaff) {
        this.passStaff = passStaff;
    }

    public Account getBid() {
        return bid;
    }

    public void setBid(Account bid) {
        this.bid = bid;
    }
    
}
