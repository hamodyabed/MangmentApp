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
public class Trucks {
    
    private String truckNumber;
    private String truckDriver;
    private String truckYear;
    private String turckType;
    private String truckLicenceExpiredDate;
    private String truckInsuranceExpiredDate;
    private String truckTachographcalibration;
    private String truckAnnualBrakesTests;
    private String truckSemiAnnualBrakesTesting;
    private String WinterTesting;
    private String trackValidityTestingMonthlySafetyOfficer;
    private String truckProduce;

    public Trucks(String truckNumber, String truckDriver, String truckYear, String turckType, String truckLicenceExpiredDate, String truckInsuranceExpiredDate, String truckTachographcalibration, String truckAnnualBrakesTests, String truckSemiAnnualBrakesTesting, String WinterTesting, String trackValidityTestingMonthlySafetyOfficer, String truckProduce) {
        this.truckNumber = truckNumber;
        this.truckDriver = truckDriver;
        this.truckYear = truckYear;
        this.turckType = turckType;
        this.truckLicenceExpiredDate = truckLicenceExpiredDate;
        this.truckInsuranceExpiredDate = truckInsuranceExpiredDate;
        this.truckTachographcalibration = truckTachographcalibration;
        this.truckAnnualBrakesTests = truckAnnualBrakesTests;
        this.truckSemiAnnualBrakesTesting = truckSemiAnnualBrakesTesting;
        this.WinterTesting = WinterTesting;
        this.trackValidityTestingMonthlySafetyOfficer = trackValidityTestingMonthlySafetyOfficer;
        this.truckProduce = truckProduce;
    }

    
    public String getTruckProduce() {
        return truckProduce;
    }

    public void setTruckProduce(String truckProduce) {
        this.truckProduce = truckProduce;
    }


    public String getTrackValidityTestingMonthlySafetyOfficer() {
        return trackValidityTestingMonthlySafetyOfficer;
    }

    public void setTrackValidityTestingMonthlySafetyOfficer(String trackValidityTestingMonthlySafetyOfficer) {
        this.trackValidityTestingMonthlySafetyOfficer = trackValidityTestingMonthlySafetyOfficer;
    }


    public String getWinterTesting() {
        return WinterTesting;
    }

    public void setWinterTesting(String WinterTesting) {
        this.WinterTesting = WinterTesting;
    }


    public String getTruckSemiAnnualBrakesTesting() {
        return truckSemiAnnualBrakesTesting;
    }

    public void setTruckSemiAnnualBrakesTesting(String truckSemiAnnualBrakesTesting) {
        this.truckSemiAnnualBrakesTesting = truckSemiAnnualBrakesTesting;
    }


    public String getTruckAnnualBrakesTests() {
        return truckAnnualBrakesTests;
    }

    public void setTruckAnnualBrakesTests(String truckAnnualBrakesTests) {
        this.truckAnnualBrakesTests = truckAnnualBrakesTests;
    }


    public String getTruckTachographcalibration() {
        return truckTachographcalibration;
    }

    public void setTruckTachographcalibration(String truckTachographcalibration) {
        this.truckTachographcalibration = truckTachographcalibration;
    }


    public String getTruckInsuranceExpiredDate() {
        return truckInsuranceExpiredDate;
    }

    public void setTruckInsuranceExpiredDate(String truckInsuranceExpiredDate) {
        this.truckInsuranceExpiredDate = truckInsuranceExpiredDate;
    }


    public String getTruckLicenceExpiredDate() {
        return truckLicenceExpiredDate;
    }

    public void setTruckLicenceExpiredDate(String truckLicenceExpiredDate) {
        this.truckLicenceExpiredDate = truckLicenceExpiredDate;
    }


    public String getTurckType() {
        return turckType;
    }

    public void setTurckType(String turckType) {
        this.turckType = turckType;
    }


    public String getTruckYear() {
        return truckYear;
    }

    public void setTruckYear(String truckYear) {
        this.truckYear = truckYear;
    }


    public String getTruckDriver() {
        return truckDriver;
    }

    public void setTruckDriver(String truckDriver) {
        this.truckDriver = truckDriver;
    }


    public String getTruckNumber() {
        return truckNumber;
    }

    public void setTruckNumber(String truckNumber) {
        this.truckNumber = truckNumber;
    }

}
