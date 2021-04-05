/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hotelDAO;

import java.sql.*;
import java.util.*;
import model.*;
import db.DataConnection;
/**
 *
 * @author admin
 */
public class ServiceDataAccess {
    
    public static int update(ServiceDetails p){  
       int status=0;  
       try{  
           Connection con=DataConnection.getConnection();  
           PreparedStatement ps=con.prepareStatement(  
                        "update product set item_name=?,start_quantity=?,perprice=? where id=?");   
           ps.setString(1,p.getImage1()); 
           ps.setString(2,p.getImage2());  
           ps.setString(3,p.getTitle());  
           ps.setString(4,p.getDescription());  
           ps.setString(5,p.getPageUrl());  
           ps.setString(6,p.getStatus());             
           ps.setInt(7,p.getId()); 
           status=ps.executeUpdate();  

           con.close();  
       }catch(Exception ex){ex.printStackTrace();}  

       return status;  
   }
    public static int delete(int serviceId){  
        int status=0;  
        try{  
            Connection con=DataConnection.getConnection();  
            PreparedStatement ps=con.prepareStatement("delete from service where id=?");  
            ps.setInt(1,serviceId);  
            status=ps.executeUpdate();    
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return status;  
    }  
    public static ServiceDetails getServiceById(int serviceUId){  
        ServiceDetails p=new ServiceDetails();  
          
        try{  
            Connection con=DataConnection.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from service where id=?");  
            ps.setInt(1,serviceUId);  
            ResultSet rs=ps.executeQuery();  
            if(rs.next()){  
                p.setId(rs.getInt(1));
                p.setImage1(rs.getString(2));
                p.setImage2(rs.getString(3));
                p.setTitle(rs.getString(4));
                p.setDescription(rs.getString(5));
                p.setPageUrl(rs.getString(6));
                p.setStatus(rs.getString(7));
                   
            }  
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return p;  
    }
    public static List<ServiceDetails> getAllProduct(){  
        List<ServiceDetails> list=new ArrayList<ServiceDetails>();  
          
        try{  
            Connection con=DataConnection.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from service");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                ServiceDetails p=new ServiceDetails();
                 p.setId(rs.getInt(1));
                p.setImage1(rs.getString(2));
                p.setImage2(rs.getString(3));
                p.setTitle(rs.getString(4));
                p.setDescription(rs.getString(5));
                p.setPageUrl(rs.getString(6));
                p.setStatus(rs.getString(7));
                list.add(p);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }
     public static List<ServiceDetails> getWedding(){  
        List<ServiceDetails> list=new ArrayList<ServiceDetails>();  
          
        try{  
            Connection con=DataConnection.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from service where pageUrl='weddingPage' and status='active'");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                ServiceDetails wedding=new ServiceDetails();
                wedding.setId(rs.getInt(1));
                wedding.setImage1(rs.getString(2));
                wedding.setImage2(rs.getString(3));
                wedding.setTitle(rs.getString(4));
                wedding.setDescription(rs.getString(5));
                list.add(wedding);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }
}
