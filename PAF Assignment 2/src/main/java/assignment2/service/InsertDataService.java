package assignment2.service;

import assignment2.model.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Dali on 4/16/2017.
 */

//De onderstaande code wordt eenmalig gebruikt om data te kunnen inserten in de database
@Service
public class InsertDataService {

    @Autowired
    private BookRepo bookTitleRepo;
    @Autowired
    private LoanRepo loanRepo;
    @Autowired
    private MagazineRepo magazineTitleRepo;
    @Autowired
    private ItemRepo itemRepo;
    @Autowired
    private BookService bookServ;
    @Autowired
    private LoanService loanService;
    @Autowired
    private BorrowRepo borrowRepo;


    public void insertData() {
        itemRepo.deleteAll();
        bookTitleRepo.deleteAll();
        magazineTitleRepo.deleteAll();
        loanRepo.deleteAll();
      bookTitleRepo.save(bookServ.getAllBooks());
        magazineTitleRepo.save(bookServ.getAllMagazines());
        borrowRepo.save(loanService.getBorrowerInformation());
        itemRepo.save(loanService.getAllItems());
        loanRepo.save(bookServ.getAllLoans());
    }

}
