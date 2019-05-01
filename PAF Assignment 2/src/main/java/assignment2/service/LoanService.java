package assignment2.service;

import assignment2.model.*;
import assignment2.model.repository.BorrowRepo;
import assignment2.model.repository.ItemRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by Dali on 4/16/2017.
 */
@Service
public class LoanService {

    @Autowired
    private ItemRepo itemRepos;

    @Autowired
    private BorrowRepo borrowRepo;

    private List<Loan> getAllLoans() {
        List<Loan> allLoans = new ArrayList<Loan>();
        allLoans.add(new Loan(new Date()));
        allLoans.add(new Loan(new Date()));
        return allLoans;
    }

    public List<Item> getAllItems() {
        List<Item> allItems = new ArrayList<Item>();

        Item myFirstItem = new Item(1);

        allItems.add(myFirstItem);
        allItems.add(new Item(2));
        allItems.add(new Item(3));
        return allItems;
    }

    public List<BorrowerInformation> getBorrowerInformation() {
        List<BorrowerInformation> borrowersInformation = new ArrayList<BorrowerInformation>();
        BorrowerInformation b = new BorrowerInformation("Naam", "Abrahamuijperstraat");

        Loan loan = new Loan(new Date());
        loan.setBorrower(b);

        borrowersInformation.add(b);
        return borrowersInformation;
    }

}
