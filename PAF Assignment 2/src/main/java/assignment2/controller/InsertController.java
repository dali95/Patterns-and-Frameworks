package assignment2.controller;

import assignment2.service.InsertDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by Dali on 4/17/2017.
 */

//De onderstaande HTTP methode wordt slechts 1 keer gebruikt om data naar de database te sturen.
    // Voor data ophalen is geen aparate controller voor nodig: zie repository klassen.
@RestController
public class InsertController {
    @Autowired
    private InsertDataService insertDataService;

    @RequestMapping(value = "/insertData")
    public void insertData(){
        insertDataService.insertData();
    }
}
