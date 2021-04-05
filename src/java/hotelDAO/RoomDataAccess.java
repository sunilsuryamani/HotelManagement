/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hotelDAO;

import java.sql.*;
import java.util.*;
import model.RoomDetails;
import db.DataConnection;
/**
 *
 * @author admin
 */
public class RoomDataAccess {

public static int update(RoomDetails roomu){  
       int status=0;  
       try{  
           Connection con=DataConnection.getConnection();  
           PreparedStatement ps=con.prepareStatement(  
                        "update roomdetails set image=?,roomType=?,roomDesc=?,offer=?,availableRoom=?,singleroomPrice=?,doubleroomPrice=?,roomFacility=?,status=? where id=?");   
           ps.setString(1,roomu.getImage());
           ps.setString(2,roomu.getRoomType());  
           ps.setString(3,roomu.getRoomDes());  
           ps.setInt(4,roomu.getOffer());  
           ps.setInt(5,roomu.getAvailableRoom());                        
           ps.setInt(6,roomu.getSingleRoomPrice()); 
           ps.setInt(7,roomu.getDoubleRoomPrice()); 
           ps.setString(8,roomu.getRoomFacility()); 
           ps.setString(9,roomu.getStatus()); 
            ps.setInt(10,roomu.getId()); 
           status=ps.executeUpdate();  

           con.close();  
       }catch(Exception ex){ex.printStackTrace();}  

       return status;  
   }
    public static int delete(int roomId){  
        int status=0;  
        try{  
            Connection con=DataConnection.getConnection();  
            PreparedStatement ps=con.prepareStatement("delete from roomdetails where id=?");  
            ps.setInt(1,roomId);  
            status=ps.executeUpdate();    
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return status;  
    }  
    public static RoomDetails getRoomById(int roomEid){  
        RoomDetails rd=new RoomDetails();  
          
        try{  
            Connection con=DataConnection.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from roomdetails where id=?");  
            ps.setInt(1,roomEid);  
            ResultSet rs=ps.executeQuery();  
            if(rs.next()){  
                rd.setId(rs.getInt(1));
                rd.setImage(rs.getString(2));
                rd.setRoomType(rs.getString(3));
                rd.setRoomDes(rs.getString(4));
                rd.setOffer(rs.getInt(5));
                rd.setAvailableRoom(rs.getInt(6));
                rd.setSingleRoomPrice(rs.getInt(7));
                rd.setDoubleRoomPrice(rs.getInt(8));
                rd.setRoomFacility(rs.getString(9));
                rd.setStatus(rs.getString(10));    
            }  
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return rd;  
    }
    public static List<RoomDetails> getAllRoom(){  
        List<RoomDetails> list=new ArrayList<RoomDetails>();  
          
        try{  
            Connection con=DataConnection.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from roomdetails");  
            ResultSet rs=ps.executeQuery();  
            while (rs.next()) {
                RoomDetails rv = new RoomDetails();
                rv.setId(rs.getInt(1));
                rv.setImage(rs.getString(2));
                rv.setRoomType(rs.getString(3));
                rv.setRoomDes(rs.getString(4));
                rv.setOffer(rs.getInt(5));
                rv.setAvailableRoom(rs.getInt(6));
                rv.setSingleRoomPrice(rs.getInt(7));
                rv.setDoubleRoomPrice(rs.getInt(8));
                rv.setRoomFacility(rs.getString(9));
                rv.setStatus(rs.getString(10));
                list.add(rv);
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }
    public static RoomDetails getAllRoomDetailsTypeBy(String roomType)
    {
        RoomDetails rd=new RoomDetails();
        try {
            Connection con=DataConnection.getConnection();
            PreparedStatement ps=con.prepareStatement("select * from roomdetails where roomType=?" );
            ps.setString(1, roomType);
            ResultSet rs=ps.executeQuery();
            if(rs.next())
            {
                rd.setId(rs.getInt(1));
                rd.setRoomType(rs.getString(3));
                rd.setAvailableRoom(rs.getInt(6));
                rd.setSingleRoomPrice(rs.getInt(7));
                rd.setDoubleRoomPrice(rs.getInt(8));

              
            }
        } catch (Exception e) {
        }
        return rd; 
    }
   
    public static int bookingUpdate(RoomDetails bookedUpadte)
    {
        int status=0;
        try {
            Connection con=DataConnection.getConnection();
            PreparedStatement ps=con.prepareStatement("update roomdetails set availableRoom=? where roomType=?");
            ps.setInt(1, bookedUpadte.getAvailableRoom());
            ps.setString(2, bookedUpadte.getRoomType());
            status=ps.executeUpdate();
        } catch (Exception e) {
        }
        return status;
    }
    
    
}
