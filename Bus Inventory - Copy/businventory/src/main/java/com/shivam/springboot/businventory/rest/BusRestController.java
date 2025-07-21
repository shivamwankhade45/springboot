package com.shivam.springboot.businventory.rest;

import com.shivam.springboot.businventory.dao.BusDAO;
import com.shivam.springboot.businventory.entity.Bus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
public class BusRestController {

    private BusDAO busDAO;

    public BusRestController(BusDAO theBusDAO){
        busDAO=theBusDAO;
    }

    @GetMapping("/bus")
    public List<Bus> findAll(){
        return busDAO.findAll();

    }

    @GetMapping("/routeNo/{routeNo}")

    public List<Bus> findAllWithRoute(@PathVariable String  routeNo){
        return busDAO.findAllWithRoute(routeNo);
    }

    @GetMapping("/search")
    public List<Bus> findAllWithSrcDstn(@RequestParam String source,
                                                @RequestParam String destination) {
        return busDAO.findAllWithSrcDstn(source, destination);
    }

    @GetMapping("/upcomingbuses/{source}")

    public List<Bus> findUpcominBuses( String source){
        return busDAO.findUpcomingBusesAtSource(source);

    }
}
