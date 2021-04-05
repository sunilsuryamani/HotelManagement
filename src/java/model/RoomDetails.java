/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author admin
 */
public class RoomDetails {
    
    private int id;
    private String image;
    private String roomType;
    private String roomDes;
    private int offer;
    private int availableRoom;
    private int singleRoomPrice;
    private int doubleRoomPrice;
    private String roomFacility;
    private String status;

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the image
     */
    public String getImage() {
        return image;
    }

    /**
     * @param image the image to set
     */
    public void setImage(String image) {
        this.image = image;
    }

    /**
     * @return the roomType
     */
    public String getRoomType() {
        return roomType;
    }

    /**
     * @param roomType the roomType to set
     */
    public void setRoomType(String roomType) {
        this.roomType = roomType;
    }

    /**
     * @return the roomDes
     */
    public String getRoomDes() {
        return roomDes;
    }

    /**
     * @param roomDes the roomDes to set
     */
    public void setRoomDes(String roomDes) {
        this.roomDes = roomDes;
    }

    /**
     * @return the offer
     */
    public int getOffer() {
        return offer;
    }

    /**
     * @param offer the offer to set
     */
    public void setOffer(int offer) {
        this.offer = offer;
    }

    /**
     * @return the availableRoom
     */
    public int getAvailableRoom() {
        return availableRoom;
    }

    /**
     * @param availableRoom the availableRoom to set
     */
    public void setAvailableRoom(int availableRoom) {
        this.availableRoom = availableRoom;
    }

    /**
     * @return the singleRoomPrice
     */
    public int getSingleRoomPrice() {
        return singleRoomPrice;
    }

    /**
     * @param singleRoomPrice the singleRoomPrice to set
     */
    public void setSingleRoomPrice(int singleRoomPrice) {
        this.singleRoomPrice = singleRoomPrice;
    }

    /**
     * @return the doubleRoomPrice
     */
    public int getDoubleRoomPrice() {
        return doubleRoomPrice;
    }

    /**
     * @param doubleRoomPrice the doubleRoomPrice to set
     */
    public void setDoubleRoomPrice(int doubleRoomPrice) {
        this.doubleRoomPrice = doubleRoomPrice;
    }

    /**
     * @return the roomFacility
     */
    public String getRoomFacility() {
        return roomFacility;
    }

    /**
     * @param roomFacility the roomFacility to set
     */
    public void setRoomFacility(String roomFacility) {
        this.roomFacility = roomFacility;
    }

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }

   
}