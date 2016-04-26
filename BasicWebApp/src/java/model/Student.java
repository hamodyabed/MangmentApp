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
public class Student {
    
    private String StudentID;
    private String StudentName;
    private String StudentAddress;

    public Student(String StudentID, String StudentName, String StudentAddress) {
        this.StudentID = StudentID;
        this.StudentName = StudentName;
        this.StudentAddress = StudentAddress;
    }

   
    
    public String getStudentName() {
        return StudentName;
    }
    public void setStudentName(String StudentName) {
        this.StudentName = StudentName;
    }
    public String getStudentAddress() {
        return StudentAddress;
    }

    public void setStudentAddress(String StudentAddress) {
        this.StudentAddress = StudentAddress;
    }
    public String getStudentID() {
        return StudentID;
    }

    public void setStudentID(String StudentID) {
        this.StudentID = StudentID;
    }

}
