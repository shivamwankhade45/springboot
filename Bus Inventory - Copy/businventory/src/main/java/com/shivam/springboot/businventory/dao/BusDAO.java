package com.shivam.springboot.businventory.dao;

import com.shivam.springboot.businventory.entity.Bus;

import java.util.List;

public interface BusDAO {

    List<Bus> findAll();

    List<Bus> findAllWithRoute(String theRouteNo);

    List<Bus> findAllWithSrcDstn(String src, String dstn);

    List<Bus>  findUpcomingBusesAtSource(String src);
}
