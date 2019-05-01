package assignment2.model;

import com.sun.istack.internal.Nullable;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Dali on 09-03-2017.
 */
@Entity
public class Item {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)

    private int itemdId;
    @Nullable
    @OneToOne(fetch = FetchType.EAGER)
    private Book books;
    @Nullable
    @OneToOne(fetch = FetchType.EAGER)
    private Magazine magazine;
    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable
    private List<Loan> loans = new ArrayList<Loan>();

    public Item() {
    }

    public Item(int id) {
        itemdId = id;
    }


    public Book getBooks() {
        return books;
    }

    public Magazine getMagazine() {
        return magazine;
    }

    public int getItemId() {
        return itemdId;
    }

    public void setItemId(int itemdId) {
        this.itemdId = itemdId;
    }

    public void setBooks(Book books) {
        this.books = books;
    }

    public void setMagazine(Magazine magazine) {
        this.magazine = magazine;
    }

    public List<Loan> getLoans() {
        return loans;
    }

    public void setLoans(List<Loan> loans) {
        this.loans = loans;
    }

    public void findOnTitle() {

    }

    public void findOnId() {

    }

    public void findOnReservation() {

    }

    public void addLoan(Loan loan) {
        if (loan != null) {
            loans.add(loan);
        }
    }

}
