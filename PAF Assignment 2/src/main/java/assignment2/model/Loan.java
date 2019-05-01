package assignment2.model;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by Dali on 09-03-2017.
 */
@Entity
public class Loan {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private Date date;
    @OneToOne(fetch = FetchType.EAGER)
    private BorrowerInformation borrowerInformation;
    @OneToOne(fetch = FetchType.EAGER)
    private Item item;


    public Loan(Date dt) {
        date = dt;
    }
   public Loan(int id, Date date, BorrowerInformation borrowerInformation, Item item, List<Item> items) {
        this.id = id;
        this.date = date;
        this.borrowerInformation = borrowerInformation;
        this.item = item;
    }

    public Loan() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public BorrowerInformation getBorrowerInformation() {
        return borrowerInformation;
    }

    public void setBorrowerInformation(BorrowerInformation borrowerInformation) {
        this.borrowerInformation = borrowerInformation;
    }


    public Item getItem() {
        return item;
    }

    public void setItem(Item item) {
        this.item = item;
    }





    public void setBorrower(BorrowerInformation borrower){
       if(borrower != null){
           borrowerInformation = borrower;
       }

   }
}
