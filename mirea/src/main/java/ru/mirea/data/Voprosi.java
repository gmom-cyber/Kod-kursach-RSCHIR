package ru.mirea.data;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@NoArgsConstructor
@Entity(name = "voprosi")
@Table(name = "voprosi")
public class Voprosi {
    @Id
    @Column(name = "id_vop")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "first_name")
    private String first_name;

    @Column(name = "email")
    private String email;

    @Column(name = "vopros")
    private String vopros;

    @Override
    public String toString() {
        return "Voprosi{" +
                "id=" + id +
                ", first_name='" + first_name + '\'' +
                ", email='" + email + '\'' +
                ", vopros='" + vopros + '\'' +
                '}';
    }
}
