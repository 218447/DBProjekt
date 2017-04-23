package database.model;


import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Table(name = "day", catalog = "world")
public class Day {

    private int id;
    private String day;
    private AtmosphericData atmosphericData;

    Day (int id, String day, AtmosphericData atmosphericData) {
        this.id = id;
        this.day = day;
        this.atmosphericData = atmosphericData;
    }

    @Id
    @GenericGenerator(name="idGenerator" , strategy="increment")
    @GeneratedValue(generator="idGenerator")
    @Column(name = "username", unique = true, nullable = false,  length = 32)
    public int getId() {
        return id;
    }

    @Column(name = "day", nullable = false, length = 10)
    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "atmosphericdata", cascade = {CascadeType.REMOVE, CascadeType.PERSIST})
    public AtmosphericData getAtmosphericData() {
        return atmosphericData;
    }

    public void setAtmosphericData(AtmosphericData atmosphericData) {
        this.atmosphericData = atmosphericData;
    }
}
