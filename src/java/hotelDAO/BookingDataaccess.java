/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hotelDAO;

import java.sql.*;
import java.util.*;
import model.BookingDetails;
import db.DataConnection;
import model.RoomDetails;
/**
 *
 * @author admin
 */
public class BookingDataaccess {
    
    public static int bookingRoom(BookingDetails booked)
    {
        int status=0;
        try {
            Connection con=DataConnection.getConnection();
            PreparedStatement ps=con.prepareStatement("insert into bookingdetails(customerName"
                    + ",mobile,bookingDate,checkout,bookingId,roomType,bedType,noRoom) values(?,?,?,?,?,?,?,?)");
            ps.setString(1, booked.getCustomerName());
            ps.setString(2, booked.getMobile());
            ps.setString(3, booked.getBookingDate());
            ps.setString(4, booked.getCheckout());
            ps.setInt(5, booked.getBookingId());
            ps.setString(6, booked.getRoomType());
            ps.setString(7, booked.getBedType());
            ps.setInt(8, booked.getNoRoom());
            status=ps.executeUpdate();
            
        } catch (Exception e) {
        }
        return status;
    }
   
    
    public static List<BookingDetails> getAllBooking(){  
        List<BookingDetails> list=new ArrayList<BookingDetails>();  
          
        try{  
            Connection con=DataConnection.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from bookingdetails");  
            ResultSet rs=ps.executeQuery();  
            while (rs.next()) {
                BookingDetails bdv = new BookingDetails();
                bdv.setId(rs.getInt(1));
                bdv.setCustomerName(rs.getString(2));
                bdv.setMobile(rs.getString(3));
                bdv.setBookingDate(rs.getString(4));
                bdv.setCheckout(rs.getString(5));
                bdv.setBookingId(rs.getInt(6));
                bdv.setRoomType(rs.getString(7));
                bdv.setBedType(rs.getString(8));
                bdv.setNoRoom(rs.getInt(9));
                bdv.setCustomerReview(rs.getString(10));
                
                list.add(bdv);
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }
    
    
}
