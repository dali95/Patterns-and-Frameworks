package assignment2.model;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Dali on 09-03-2017.
 */
@Entity
public class BorrowerInformation {
    @Id     @GeneratedValue(strategy = GenerationType.AUTO)

    private int id;
    private String name;
    private String address;
    @ManyToMany(cascade = CascadeType.MERGE)
    @JoinTable
    private List<Reservation> reservations;
    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable
    private List<Loan> loans;
    public BorrowerInformation() {
    }

    public BorrowerInformation(String nm, String adr){
        name = nm;
        address = adr;
        reservations = new ArrayList<Reservation>();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public List<Reservation> getReservations() {
        return reservations;
    }

    public void setReservations(List<Reservation> reservations) {
        this.reservations = reservations;
    }

    public List<Loan> getLoans() {
        return loans;
    }

    public void setLoans(List<Loan> loans) {
        this.loans = loans;
    }

}
