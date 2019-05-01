package assignment2.model;


import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)

public class Book implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.TABLE)
    private int id;

    private String name;
    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable
    private List<Reservation> reservations;
    @ManyToMany(cascade = CascadeType.MERGE)
    @JoinTable
    private List<Item> items = new ArrayList<Item>();

    public Book() {

    }

    public Book(String nm) {
        name = nm;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Reservation> getReservations() {
        return reservations;
    }

    public void setReservations(List<Reservation> reservations) {
        this.reservations = reservations;
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}

