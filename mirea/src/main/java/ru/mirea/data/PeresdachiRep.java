package ru.mirea.data;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface PeresdachiRep extends JpaRepository<Peresdachi, Integer> {

    @Query("select b from peresdachi b where b.grups like %:name%")
    List<Peresdachi> filterByName(String name);
}
