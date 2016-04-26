/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author iyada
 */
public class Drivers {
    
    private String driverName;
    private String driverID;
    private String driverStartDay;
    private String driverPhoneNumber1;
    private String driverPhoneNumber2;
    private String driverLicenseNumber;
    private String driverBirthDay;
    private String driverSalary;
    private String driverLicenseDay;
    private String driverLicenseExpiredDay;
    private String driverLicenseType;
    private boolean driverCanDriveForklift;

    public boolean isDriverCanDriveForklift() {
        return driverCanDriveForklift;
    }

    public void setDriverCanDriveForklift(boolean driverCanDriveForklift) {
        this.driverCanDriveForklift = driverCanDriveForklift;
    }

    public String getDriverLicenseType() {
        return driverLicenseType;
    }

    public void setDriverLicenseType(String driverLicenseType) {
        this.driverLicenseType = driverLicenseType;
    }


    public String getDriverLicenseExpiredDay() {
        return driverLicenseExpiredDay;
    }

    public void setDriverLicenseExpiredDay(String driverLicenseExpiredDay) {
        this.driverLicenseExpiredDay = driverLicenseExpiredDay;
    }


    public String getDriverLicenseNumber() {
        return driverLicenseNumber;
    }

    public void setDriverLicenseNumber(String driverLicenseNumber) {
        this.driverLicenseNumber = driverLicenseNumber;
    }
    
    public String getDriverLicenseDay() {
        return driverLicenseDay;
    }

    public void setDriverLicenseDay(String driverLicenseDay) {
        this.driverLicenseDay = driverLicenseDay;
    }


    public String getDriverSalary() {
        return driverSalary;
    }

    public void setDriverSalary(String driverSalary) {
        this.driverSalary = driverSalary;
    }


    public String getDriverBirthDay() {
        return driverBirthDay;
    }

    public void setDriverBirthDay(String driverBirthDay) {
        this.driverBirthDay = driverBirthDay;
    }


    

    public String getDriverPhoneNumber2() {
        return driverPhoneNumber2;
    }

    public void setDriverPhoneNumber2(String driverPhoneNumber2) {
        this.driverPhoneNumber2 = driverPhoneNumber2;
    }

    public String getDriverPhoneNumber1() {
        return driverPhoneNumber1;
    }

    public void setDriverPhoneNumber1(String driverPhoneNumber1) {
        this.driverPhoneNumber1 = driverPhoneNumber1;
    }

    public String getDriverStartDay() {
        return driverStartDay;
    }

    public void setDriverStartDay(String driverStartDay) {
        this.driverStartDay = driverStartDay;
    }

    public String getDriverID() {
        return driverID;
    }

    public void setDriverID(String driverID) {
        this.driverID = driverID;
    }

    public String getDriverName() {
        return driverName;
    }

    public void setDriverName(String driverName) {
        this.driverName = driverName;
    }

}
