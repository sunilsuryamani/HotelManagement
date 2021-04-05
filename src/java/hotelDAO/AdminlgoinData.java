/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hotelDAO;

import db.DataConnection;
import java.sql.*;

import model.Adminlogin;

/**
 *
 * @author admin
 */
public class AdminlgoinData {
     
    public static String getAdminByLoginId(Adminlogin login){  
        
        try{  
            Connection con=DataConnection.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from admintable where email=? and password=?");
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
