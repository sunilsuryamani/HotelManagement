/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hotelDAO;

import java.sql.*;
import java.util.*;
import model.HotelNewsDetails;
import db.DataConnection;
/**
 *
 * @author admin
 */
public class HotelNewsDataAccess {
    public static int update(HotelNewsDetails empupdate){  
       int status=0;  
       try{  
           Connection con=DataConnection.getConnection();  
           PreparedStatement ps=con.prepareStatement(  
                        "update hotelnews set title=?,description=?,address=?,contactEmail=?,"
                                + "contactPerson=?,mobile=?,phone=?,status=? where id=?");   
           ps.setString(1,empupdate.getTopImage());  
           ps.setString(2,empupdate.getButtomImage());  
           ps.setString(3,empupdate.getPostDate());  
           ps.setString(4,empupdate.getEmployeeName()); 
           ps.setString(5,empupdate.getNewsTitle()); 
           ps.setString(6,empupdate.getNews()); 
           ps.setString(7,empupdate.getPagePosition());           
           ps.setString(8,empupdate.getStatus()); 
           ps.setInt(9,empupdate.getId()); 
           status=ps.executeUpdate();  

           con.close();  
       }catch(Exception ex){ex.printStackTrace();}  

       return status;  
   }
    public static int delete(int newsId){  
        int status=0;  
        try{  
            Connection con=DataConnection.getConnection();  
            PreparedStatement ps=con.prepareStatement("delete from hotelnews where id=?");  
            ps.setInt(1,newsId);  
            status=ps.executeUpdate();    
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return status;  
    }  
    public static HotelNewsDetails getNewsById(int newsUpId){  
        HotelNewsDetails newsedit=new HotelNewsDetails();  
          
        try{  
            Connection con=DataConnection.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from hotelnews where id=?");  
            ps.setInt(1,newsUpId);  
            ResultSet rs=ps.executeQuery();  
            if(rs.next()){  
               newsedit.setId(rs.getInt(1));
                newsedit.setTopImage(rs.getString(2));
                newsedit.setButtomImage(rs.getString(3));
                newsedit.setPostDate(rs.getString(4));
                newsedit.setEmployeeName(rs.getString(5));
                newsedit.setNewsTitle(rs.getString(6));
                newsedit.setNews(rs.getString(7));
                newsedit.setPagePosition(rs.getString(8));
                newsedit.setStatus(rs.getString(9)); 
            }  
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return newsedit;  
    }
    public static List<HotelNewsDetails> getNews(){  
        List<HotelNewsDetails> list=new ArrayList<HotelNewsDetails>();  
          
        try{  
            Connection con=DataConnection.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from hotelnews");  
            ResultSet rs=ps.executeQuery();  
            while (rs.next()) {
                HotelNewsDetails newsview = new HotelNewsDetails();
                newsview.setId(rs.getInt(1));
                newsview.setTopImage(rs.getString(2));
                newsview.setButtomImage(rs.getString(3));
                newsview.setPostDate(rs.getString(4));
                newsview.setEmployeeName(rs.getString(5));
                newsview.setNewsTitle(rs.getString(6));
                newsview.setNews(rs.getString(7));
                newsview.setPagePosition(rs.getString(8));
                newsview.setStatus(rs.getString(9));
              
                list.add(newsview);
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }
}
