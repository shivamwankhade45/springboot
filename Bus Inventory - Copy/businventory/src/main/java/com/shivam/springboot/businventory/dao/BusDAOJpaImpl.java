package com.shivam.springboot.businventory.dao;

import com.shivam.springboot.businventory.entity.Bus;
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.time.LocalTime;
import java.util.List;

@Repository
public class BusDAOJpaImpl implements  BusDAO{

    private EntityManager entityManager;

    @Autowired
    public BusDAOJpaImpl(EntityManager theEntityManager){
        entityManager=theEntityManager;
    }
    @Override
    public List<Bus> findAll() {
        TypedQuery<Bus> theQuery= entityManager.createQuery("FROM Bus", Bus.class);
        return theQuery.getResultList();
    }

    @Override
    public List<Bus> findAllWithRoute(String theRouteNo){
        TypedQuery<Bus> theQuery= entityManager.createQuery("FROM Bus WHERE routeNo =: theData", Bus.class);
        theQuery.setParameter("theData",theRouteNo);
        return  theQuery.getResultList();
    }

    @Override
    public List<Bus> findAllWithSrcDstn(String src, String dstn) {

        TypedQuery<Bus> theQuery= entityManager.createQuery("FROM Bus WHERE source =: theData1 AND destination=:theData2", Bus.class);
        theQuery.setParameter("theData1",src);
        theQuery.setParameter("theData2",dstn);
        return  theQuery.getResultList();
    }

    @Override
    public List<Bus> findUpcomingBusesAtSource(String src) {
        LocalTime currentTime = LocalTime.now();
        TypedQuery<Bus> theQuery= entityManager.createQuery("FROM Bus WHERE source =: theData AND timing >=:currentTime", Bus.class);
        theQuery.setParameter("theData",src);
        theQuery.setParameter("currentTime",currentTime);
        return  theQuery.getResultList();
    }


}
