/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hotelDAO;

import java.sql.*;
import java.util.*;
import model.ContactUsDetails;
import db.DataConnection;
/**
 *
 * @author admin
 */
public class ContactUsDataAccess {
      public static int update(ContactUsDetails contactupdate){  
       int status=0;  
       try{  
           Connection con=DataConnection.getConnection();  
           PreparedStatement ps=con.prepareStatement(  
                        "update contactus set title=?,description=?,address=?,contactEmail=?,"
                                + "contactPerson=?,mobile=?,phone=?,status=? where id=?");   
           ps.setString(1,contactupdate.getTitle());  
           ps.setString(2,contactupdate.getDescription());  
           ps.setString(3,contactupdate.getAddress());  
           ps.setString(4,contactupdate.getContactEmail()); 
           ps.setString(4,contactupdate.getContactPerson()); 
           ps.setString(4,contactupdate.getMobile()); 
           ps.setString(4,contactupdate.getPhone()); 
           ps.setString(4,contactupdate.getStatus()); 
           ps.setInt(5,contactupdate.getId()); 
           status=ps.executeUpdate();  

           con.close();  
       }catch(Exception ex){ex.printStackTrace();}  

       return status;  
   }
    public static int delete(int id){  
        int status=0;  
        try{  
            Connection con=DataConnection.getConnection();  
            PreparedStatement ps=con.prepareStatement("delete from contactus where id=?");  
            ps.setInt(1,id);  
            status=ps.executeUpdate();    
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return status;  
    }  
    public static ContactUsDetails getProductById(int id){  
        ContactUsDetails contactedit=new ContactUsDetails();  
          
        try{  
            Connection con=DataConnection.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from contactus where id=?");  
            ps.setInt(1,id);  
            ResultSet rs=ps.executeQuery();  
            if(rs.next()){  
                contactedit.setId(rs.getInt(1));
                contactedit.setTitle(rs.getString(2));
                contactedit.setDescription(rs.getString(3));
                contactedit.setAddress(rs.getString(4));
                contactedit.setContactEmail(rs.getString(5));
                contactedit.setContactPerson(rs.getString(6));
                contactedit.setMobile(rs.getString(7));
                contactedit.setPhone(rs.getString(8));
                contactedit.setStatus(rs.getString(9));   
            }  
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return contactedit;  
    }
    public static List<ContactUsDetails> getAllContact(){  
        List<ContactUsDetails> list=new ArrayList<ContactUsDetails>();  
          
        try{  
            Connection con=DataConnection.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from contactus");  
            ResultSet rs=ps.executeQuery();  
            while (rs.next()) {
                ContactUsDetails contactview = new ContactUsDetails();
                contactview.setId(rs.getInt(1));
                contactview.setTitle(rs.getString(2));
                contactview.setDescription(rs.getString(3));
                contactview.setAddress(rs.getString(4));
                contactview.setContactEmail(rs.getString(5));
                contactview.setContactPerson(rs.getString(6));
                contactview.setMobile(rs.getString(7));
                contactview.setPhone(rs.getString(8));
                contactview.setPageUrl(rs.getString(9));
                contactview.setStatus(rs.getString(10));
                list.add(contactview);
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }
    
}
