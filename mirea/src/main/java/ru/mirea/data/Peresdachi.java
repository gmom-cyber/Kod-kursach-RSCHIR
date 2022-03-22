package ru.mirea.data;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.sql.Date;

@Getter
@Setter
@NoArgsConstructor
@Entity(name = "peresdachi")
@Table(name = "peresdachi")
public class Peresdachi {
    @Id
    @Column(name = "id_pers")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "data_peres")
    @Temporal(TemporalType.DATE)
    private java.util.Date data_peres;

    @Column(name = "time_peres")
    private String time_peres;

    @Column(name = "prepod")
    private String prepod;

    @Column(name = "auditoria")
    private String auditoria;

    @Column(name = "predmet")
    private String predmet;

    @Column(name = "grups")
    private String grups;

    @Override
    public String toString() {
        return "<br>"+
                "Дата: " + data_peres + "; "+
                "Время: " + time_peres + "; " +
                "Преподаватель: " + prepod + "; " +
                "Аудитория: " + auditoria + "; " +
                "Предмет: " + predmet + "; ";
    }
}
