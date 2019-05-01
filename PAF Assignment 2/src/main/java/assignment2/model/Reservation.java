package assignment2.model;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by Dali on 09-03-2017.
 */
@Entity
public class Reservation {
    @Id     @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private Date date;
    @OneToOne(fetch = FetchType.EAGER)
    private Book book;

    @OneToOne(fetch = FetchType.EAGER)
    private Magazine magainze;
    public Reservation() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public Magazine getMagainze() {
        return magainze;
    }

    public void setMagainze(Magazine magainze) {
        this.magainze = magainze;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Reservation(Date dt){
        date = dt;

    }
}
