package ru.mirea.data;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DataImpl {
    private final PeresdachiRep peresdachiRep;
    private final VoprosiRep voprosiRep;

    @Autowired
    public DataImpl(PeresdachiRep peresdachiRep, VoprosiRep voprosiRep) {
        this.peresdachiRep = peresdachiRep;
        this.voprosiRep = voprosiRep;
    }

    public List<Peresdachi> findGroupByLike(String name)
    {
        return peresdachiRep.filterByName(name);
    }
}
