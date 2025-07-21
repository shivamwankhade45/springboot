package com.shivam.springboot.businventory.entity;

import jakarta.persistence.*;

import java.math.BigDecimal;
import java.time.LocalTime;

@Entity
@Table(name="bus")
public class Bus {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private int id;

    @Column(name="route_no")
    private String routeNo;

    @Column(name = "bus_no")
    private String busNo;

    @Column(name = "source")
    private String source;

    @Column(name = "destination")
    private String destination;

    @Column(name = "available_seat")
    private int noOfSeatsAvl;

    @Column(name = "price")
    private BigDecimal price;

    @Column(name = "timing")
    private LocalTime timing;


    public Bus(){

    }

    public Bus( LocalTime timing, BigDecimal price, int noOfSeatsAvl, String destination, String source, String busNo, String routeNo) {
        this.timing = timing;
        this.price = price;
        this.noOfSeatsAvl = noOfSeatsAvl;
        this.destination = destination;
        this.source = source;
        this.busNo = busNo;
        this.routeNo = routeNo;
    }

    public String getRouteNo() {
        return routeNo;
    }

    public void setRouteNo(String routeNo) {
        this.routeNo = routeNo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBusNo() {
        return busNo;
    }

    public void setBusNo(String busNo) {
        this.busNo = busNo;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public int getNoOfSeatsAvl() {
        return noOfSeatsAvl;
    }

    public void setNoOfSeatsAvl(int noOfSeatsAvl) {
        this.noOfSeatsAvl = noOfSeatsAvl;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public  LocalTime getTiming() {
        return timing;
    }

    public void setTiming( LocalTime timing) {
        this.timing = timing;
    }

    @Override
    public String toString() {
        return "Bus{" +
                "id=" + id +
                ", routeNo='" + routeNo + '\'' +
                ", busNo='" + busNo + '\'' +
                ", source='" + source + '\'' +
                ", destination='" + destination + '\'' +
                ", noOfSeatsAvl=" + noOfSeatsAvl +
                ", price=" + price +
                ", timing=" + timing +
                '}';
    }
}
