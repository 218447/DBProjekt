package database.model;


import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Table(name = "history", catalog = "world")
public class History {

    private int id;
    private Day day;

    @Id
    @GenericGenerator(name="idGenerator" , strategy="increment")
    @GeneratedValue(generator="idGenerator")
    @Column(name = "username", unique = true, nullable = false,  length = 32)
    public int getId() {
        return id;
    }
//adda
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "day", cascade = {CascadeType.REMOVE, CascadeType.PERSIST})
    public Day getDay() {
        return day;
    }

    public void setDay(Day day) {
        this.day = day;
    }
}