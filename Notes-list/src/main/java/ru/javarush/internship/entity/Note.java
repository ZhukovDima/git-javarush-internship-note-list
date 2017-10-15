package ru.javarush.internship.entity;

import org.hibernate.annotations.Generated;
import org.hibernate.annotations.GenerationTime;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by admin on 11.10.2017.
 */
@Entity
@Table(name="note")
public class Note {

    @Id
    @Column(name="id")
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;

    @Column(name="text")
    private String text;

    @Column(name="executed")
    private boolean isExecuted;

    @Column(name="date_entered", columnDefinition = "TIMESTAMP ON UPDATE CURRENT TIMESTAMP")
    @Generated(GenerationTime.ALWAYS)
    private Date dateEntered;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public boolean isExecuted() {
        return isExecuted;
    }

    public void setExecuted(boolean executed) {
        isExecuted = executed;
    }

    public Date getDateEntered() {
        return dateEntered;
    }

    public void setDateEntered(Date dateEntered) {
        this.dateEntered = dateEntered;
    }

    @Override
    public String toString() {
        return "Note{" +
                "id=" + id +
                ", text='" + text + '\'' +
                ", isExecuted=" + isExecuted +
                ", dateEntered=" + dateEntered +
                '}';
    }
}
