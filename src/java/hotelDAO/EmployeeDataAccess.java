/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hotelDAO;

import java.sql.*;
import java.util.*;
import model.EmployeeDetails;
import db.DataConnection;

/**
 *
 * @author admin
 */
public class EmployeeDataAccess {
     public static int saveEmployeeData(EmployeeDetails addEmp){  
       int status=0;  
       try{  
           Connection con=DataConnection.getConnection();  
           PreparedStatement ps=con.prepareStatement(  
                        "insert into employeedetails(employeeName,position,mobile,email,age,joiningDate,salary,address,gender,status) values(?,?,?,?,?,?,?,?,?,?)");   
           ps.setString(1,addEmp.getEmployeeName()); 
           ps.setString(2, addEmp.getPosition());
           ps.setString(3, addEmp.getMobile());
           ps.setString(4, addEmp.getEmail());
           ps.setInt(5, addEmp.getAge());
           ps.setString(6, addEmp.getJoiningDate());
           ps.setInt(7, addEmp.getSalary());
           ps.setString(8, addEmp.getAddress());
           ps.setString(9, addEmp.getGender());
           ps.setString(10, addEmp.getStatus());
            
           status=ps.executeUpdate();  

           con.close();  
       }catch(Exception ex){ex.printStackTrace();}  

       return status;  
   }
    public static int updateEmployee(EmployeeDetails empupdate){  
       int status=0;  
       try{  
           Connection con=DataConnection.getConnection();  
           PreparedStatement ps=con.prepareStatement(  
                        "update employeedetails set position=?,mobile=?,email=?,salary=?,"
                                + "address=?,status=? where id=?");   
           ps.setString(1,empupdate.getPosition());  
           ps.setString(2,empupdate.getMobile());    
           ps.setString(3,empupdate.getEmail());
           ps.setInt(4,empupdate.getSalary()); 
           ps.setString(5,empupdate.getAddress());
           ps.setString(6,empupdate.getStatus()); 
           ps.setInt(7,empupdate.getId()); 
           status=ps.executeUpdate();  

           con.close();  
       }catch(Exception ex){ex.printStackTrace();}  

       return status;  
   }
    public static int delete(int empDeleteId){  
        int status=0;  
        try{  
            Connection con=DataConnection.getConnection();  
            PreparedStatement ps=con.prepareStatement("update employeedetails setstatus='in-Active' where id=?");  
            ps.setInt(1,empDeleteId);  
            status=ps.executeUpdate();    
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return status;  
    }  
    public static EmployeeDetails getEmployeeId(int empUid){  
        EmployeeDetails empedit=new EmployeeDetails();  
          
        try{  
            Connection con=DataConnection.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from employeedetails where id=?");  
            ps.setInt(1,empUid);  
            ResultSet rs=ps.executeQuery();  
            if(rs.next()){  
                empedit.setId(rs.getInt(1));
                empedit.setEmployeeName(rs.getString(2));
                empedit.setPosition(rs.getString(3));
                empedit.setMobile(rs.getString(4));
                empedit.setEmail(rs.getString(5));
                empedit.setSalary(rs.getInt(8));
                empedit.setAddress(rs.getString(9));
                empedit.setStatus(rs.getString(11));  
            }  
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return empedit;  
    }
    public static List<EmployeeDetails> getAllEmployee(){  
        List<EmployeeDetails> list=new ArrayList<EmployeeDetails>();  
          
        try{  
            Connection con=DataConnection.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from employeedetails");  
            ResultSet rs=ps.executeQuery();  
            while (rs.next()) {
                EmployeeDetails empview = new EmployeeDetails();
                empview.setId(rs.getInt(1));
                empview.setEmployeeName(rs.getString(2));
                empview.setPosition(rs.getString(3));
                empview.setMobile(rs.getString(4));
                empview.setEmail(rs.getString(5));
                empview.setAge(rs.getInt(6));
                empview.setJoiningDate(rs.getString(7));
                empview.setSalary(rs.getInt(8));
                empview.setAddress(rs.getString(9));
                empview.setGender(rs.getString(10));
                empview.setStatus(rs.getString(11));
                list.add(empview);
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }
}
