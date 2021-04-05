/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hotelDAO;

import java.sql.*;
import java.util.*;
import model.UserDetails;
import db.DataConnection;
/**
 *
 * @author admin
 */
public class UserDataAccess {
    public static int saveCustomerData(UserDetails insertUser){  
       int status=0;  
       try{  
           Connection con=DataConnection.getConnection();  
           PreparedStatement ps=con.prepareStatement(  
                        "insert into userdetails(username,age,email,mobile,password,country,city,gender) values(?,?,?,?,?,?,?,?)");   
           ps.setString(1,insertUser.getName()); 
           ps.setInt(2, insertUser.getAge());
           ps.setString(3, insertUser.getEmail());
           ps.setString(4, insertUser.getMobile());
           ps.setString(5, insertUser.getPassword());
           ps.setString(6, insertUser.getCountry());
           ps.setString(7, insertUser.getCity());
           ps.setString(8, insertUser.getGender());
            
           status=ps.executeUpdate();  

           con.close();  
       }catch(Exception ex){ex.printStackTrace();}  

       return status;  
   }
     public static int updateCustomer(UserDetails userUpdate){  
       int status=0;  
       try{  
           Connection con=DataConnection.getConnection();  
           PreparedStatement ps=con.prepareStatement(  
                        "update userdetails set username=?,age=?,mobile=?,city=?,bio=? where email=?");   
           ps.setString(1,userUpdate.getName());
           ps.setInt(2,userUpdate.getAge());
           ps.setString(3,userUpdate.getMobile());
           ps.setString(4,userUpdate.getCity());             
           ps.setString(5,userUpdate.getBio());
           ps.setString(6,userUpdate.getEmail()); 
           status=ps.executeUpdate();  

           con.close();  
       }catch(Exception ex){ex.printStackTrace();}  

       return status;  
   }
      public static UserDetails getUserById(String email){  
        UserDetails viewUser=new UserDetails();  
          
        try{  
            Connection con=DataConnection.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from userdetails where email=?");  
            ps.setString(1,email);  
            ResultSet rs=ps.executeQuery();  
            if(rs.next()){  
                viewUser.setId(rs.getInt(1));
                viewUser.setName(rs.getString(2));
                viewUser.setAge(rs.getInt(3));
                viewUser.setEmail(rs.getString(4));
                viewUser.setMobile(rs.getString(5));
                viewUser.setPassword(rs.getString(6));
                viewUser.setCity(rs.getString(8));
     
                viewUser.setBio(rs.getString(10));    
            }  
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return viewUser;  
    }
   public static List<UserDetails> getAllUSerInfo(){  
        List<UserDetails> list=new ArrayList<UserDetails>();  
          
        try{  
            Connection con=DataConnection.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from userdetails");  
            ResultSet rs=ps.executeQuery();  
            while (rs.next()) {
                UserDetails viewUser = new UserDetails();
                viewUser.setId(rs.getInt(1));
                viewUser.setName(rs.getString(2));
                viewUser.setAge(rs.getInt(3));
                viewUser.setEmail(rs.getString(4));
                viewUser.setMobile(rs.getString(5));
                viewUser.setCountry(rs.getString(7));
                viewUser.setCity(rs.getString(8));
                viewUser.setGender(rs.getString(9));
                viewUser.setBio(rs.getString(10));

                list.add(viewUser);
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    } 
    public static UserDetails getLogInUserInfo(String email){  
        UserDetails viewUser=new UserDetails();  
          
        try{  
            Connection con=DataConnection.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from userdetails where id='"+email+"'");  
            ps.setString(1, email);
            ResultSet rs=ps.executeQuery();  
            if(rs.next()){  
                viewUser.setName(rs.getString(2));
                viewUser.setAge(rs.getInt(3));
                viewUser.setMobile(rs.getString(5));
                viewUser.setCity(rs.getString(8));

                viewUser.setBio(rs.getString(10));    
            }  
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return viewUser;  
    }
   
}
