/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author User
 */
public class Customers {
    
    private String firstName;
    private String latName;
    private String custamerID;
    private String companyName;
    private String address;
    private String Settlement;
    private String Targeting;

    public Customers(String firstName, String latName, String custamerID, String companyName, String address, String Settlement, String Targeting) {
        this.firstName = firstName;
        this.latName = latName;
        this.custamerID = custamerID;
        this.companyName = companyName;
        this.address = address;
        this.Settlement = Settlement;
        this.Targeting = Targeting;
    }

    public String getTargeting() {
        return Targeting;
    }

    public void setTargeting(String Targeting) {
        this.Targeting = Targeting;
    }


    public String getSettlement() {
        return Settlement;
    }

    public void setSettlement(String Settlement) {
        this.Settlement = Settlement;
    }


    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }



    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }


    public String getCustamerID() {
        return custamerID;
    }

    public void setCustamerID(String custamerID) {
        this.custamerID = custamerID;
    }


    public String getLatName() {
        return latName;
    }

    public void setLatName(String latName) {
        this.latName = latName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

}
