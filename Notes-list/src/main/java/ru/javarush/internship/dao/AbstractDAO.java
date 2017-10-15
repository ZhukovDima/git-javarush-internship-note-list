package ru.javarush.internship.dao;

import java.util.List;

/**
 * Created by admin on 11.10.2017.
 */
public abstract class AbstractDAO<E, K>  {

    public abstract List<E> getAll();
    public abstract E getEntityByID(K id);
    public abstract void insert(E entity);
    public abstract void update(E entity);
    public abstract void delete(K id);
}
