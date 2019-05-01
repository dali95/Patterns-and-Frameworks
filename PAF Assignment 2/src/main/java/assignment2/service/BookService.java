package assignment2.service;

import assignment2.model.*;
import assignment2.model.repository.BookRepo;
import assignment2.model.repository.MagazineRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by Dali on 4/15/2017.
 */
@Service
public class BookService {

    @Autowired
    private MagazineRepo magazineTitleRepo;
    @Autowired
    private LoanService loanService;
    @Autowired
    private BookRepo bookRepo;

    public List<Book> getAllBooks() {
        List<Book> allBooksTitle = new ArrayList<Book>();
        Book myNewFirsBook = new Book("Book1");
        myNewFirsBook.setReservations(getAllReservations());
        allBooksTitle.add(myNewFirsBook);
        allBooksTitle.add(new Book("Book2"));
        return allBooksTitle;
    }

    public List<Magazine> getAllMagazines() {
        List<Magazine> allMagazineTitle = new ArrayList<Magazine>();
        allMagazineTitle.add(new Magazine("Magazine 2"));
        return allMagazineTitle;
    }

    public List<Loan> getAllLoans() {
        List<Loan> allLoans = new ArrayList<Loan>();
        allLoans.add(new Loan(new Date()));
        allLoans.add(new Loan(new Date()));
        allLoans.add(new Loan(new Date()));

        return allLoans;
    }

    private List<Reservation> getAllReservations() {
        List<Reservation> allReservations = new ArrayList<Reservation>();
        allReservations.add(new Reservation(new Date()));
        allReservations.add(new Reservation(new Date()));
        allReservations.add(new Reservation(new Date()));

        return allReservations;
    }
}
