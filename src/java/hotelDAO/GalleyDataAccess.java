/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hotelDAO;

import java.sql.*;
import java.util.*;
import model.GalleryDetails;
import db.DataConnection;
/**
 *
 * @author admin
 */
public class GalleyDataAccess {
    public static int saveGaleryData(GalleryDetails insertGallery){  
       int status=0;  
       try{  
           Connection con=DataConnection.getConnection();  
           PreparedStatement ps=con.prepareStatement(  
                        "insert into gallery(image,title,pageUrl,status) values(?,?,?,?)");   
           ps.setString(1,insertGallery.getImage()); 
           ps.setString(2,insertGallery.getTitle());  
           ps.setString(3,insertGallery.getPageUrl());  
           ps.setString(4,insertGallery.getStatus());                        
           status=ps.executeUpdate();  

           con.close();  
       }catch(Exception ex){ex.printStackTrace();}  

       return status;  
   }
      
    public static int updateGallery(GalleryDetails gdu){  
       int status=0;  
       try{  
           Connection con=DataConnection.getConnection();  
           PreparedStatement ps=con.prepareStatement(  
                        "update gallery set image=?,title=?,pageUrl=?,status=? where id=?");   
           ps.setString(1,gdu.getImage()); 
           ps.setString(2,gdu.getTitle());  
           ps.setString(3,gdu.getPageUrl());  
           ps.setString(4,gdu.getStatus());                        
           ps.setInt(5,gdu.getId()); 
           status=ps.executeUpdate();  

           con.close();  
       }catch(Exception ex){ex.printStackTrace();}  

       return status;  
   }
    public static int delete(int galleryId){  
        int status=0;  
        try{  
            Connection con=DataConnection.getConnection();  
            PreparedStatement ps=con.prepareStatement("delete from gallery where id=?");  
            ps.setInt(1,galleryId);  
            status=ps.executeUpdate();    
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return status;  
    }  
    public static GalleryDetails getGalleryById(int id){  
        GalleryDetails gd=new GalleryDetails();  
          
        try{  
            Connection con=DataConnection.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from gallery where id=?");  
            ps.setInt(1,id);  
            ResultSet rs=ps.executeQuery();  
            if(rs.next()){  
                gd.setId(rs.getInt(1));
                gd.setImage(rs.getString(2));
                gd.setTitle(rs.getString(3));
                gd.setPageUrl(rs.getString(4));
                gd.setStatus(rs.getString(5));    
            }  
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return gd;  
    }
    public static List<GalleryDetails> getAllGalley(){  
        List<GalleryDetails> list=new ArrayList<GalleryDetails>();  
          
        try{  
            Connection con=DataConnection.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from gallery");  
            ResultSet rs=ps.executeQuery();  
            while (rs.next()) {
                GalleryDetails gdv = new GalleryDetails();
                gdv.setId(rs.getInt(1));
                gdv.setImage(rs.getString(2));
                gdv.setTitle(rs.getString(3));
                gdv.setPageUrl(rs.getString(4));
                gdv.setStatus(rs.getString(5));
                list.add(gdv);
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }
    
    public static List<GalleryDetails> getAllWeddingGalley(){  
        List<GalleryDetails> weddinglist=new ArrayList<GalleryDetails>();  
          
        try{  
            Connection con=DataConnection.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from gallery where pageUrl='weddingPage' and status='active'");  
            ResultSet rs=ps.executeQuery();  
            while (rs.next()) {
                GalleryDetails gwedding = new GalleryDetails();
                gwedding.setId(rs.getInt(1));
                gwedding.setImage(rs.getString(2));
                weddinglist.add(gwedding);
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return weddinglist;  
    }
    public static List<GalleryDetails> getAllGalleyPage(){  
        List<GalleryDetails> gallerylist=new ArrayList<GalleryDetails>();  
          
        try{  
            Connection con=DataConnection.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from gallery where pageUrl='galleryPage' and status='active'");  
            ResultSet rs=ps.executeQuery();  
            while (rs.next()) {
                GalleryDetails gallerypage = new GalleryDetails();
                gallerypage.setId(rs.getInt(1));
                gallerypage.setImage(rs.getString(2));
                gallerypage.setTitle(rs.getString(3));
                gallerylist.add(gallerypage);
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return gallerylist;  
    }
    public static List<GalleryDetails> getAllRoomView(){  
        List<GalleryDetails> roomlist=new ArrayList<GalleryDetails>();  
          
        try{  
            Connection con=DataConnection.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from gallery where pageUrl='weddingPage' and status='active'");  
            ResultSet rs=ps.executeQuery();  
            while (rs.next()) {
                GalleryDetails roomview = new GalleryDetails();
                roomview.setId(rs.getInt(1));
                roomview.setImage(rs.getString(2));
                roomlist.add(roomview);
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return roomlist;  
    }
}
