/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hotelDAO;

import model.UserDetails;
import java.sql.*;
import db.*;
/**
 *
 * @author admin
 */
public class LoginCustomer {
    
    public static int passwordFroget(UserDetails upwd){
        int status=0;
        try {
            Connection con=DataConnection.getConnection();
            PreparedStatement ps = con.prepareStatement("update userdetails set password=? where mobile=?");
            ps.setString(1, upwd.getPassword());
            ps.setString(2, upwd.getEmail());
            status = ps.executeUpdate();
            
        } catch (Exception e) {
        }
        return status;
    }
     public static int changePassword(UserDetails upwd){
        int status=0;
        try {
            Connection con=DataConnection.getConnection();
            PreparedStatement ps = con.prepareStatement("update userdetails set password=? where password=?");
            ps.setString(1, upwd.getPassword());
            ps.setString(2, upwd.getPassword());
            status = ps.executeUpdate();
            
        } catch (Exception e) {
        }
        return status;
    }
     public static String getUserByLoginId(UserDetails login){  
        
        try{  
            Connection con=DataConnection.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from userdetails where email=? and password=?");
            ps.setString(1, login.getEmail());
            ps.setString(2, login.getPassword());
            ResultSet rs=ps.executeQuery(); 
//            UserDetails viewUser=new UserDetails();  
            if(rs.next()){  
                return "true";                         
                
            }  
            else{
                return "false";
            } 
        }catch(Exception ex){ex.printStackTrace();}  
        return "error";
    }
}
