package ru.javarush.internship.dao;

import ru.javarush.internship.entity.Note;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;

/**
 * Created by admin on 11.10.2017.
 */

@Repository
public class NoteDAO extends AbstractDAO<Note, Integer> {

    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory){
        this.sessionFactory = sessionFactory;
    }

    @Override
    public List<Note> getAll() {
        Session session = this.sessionFactory.getCurrentSession();
        CriteriaBuilder cb = session.getCriteriaBuilder();
        CriteriaQuery<Note> cq = cb.createQuery(Note.class);
        Root<Note> root = cq.from(Note.class);
        cq.select(root);
        Query<Note> query = session.createQuery(cq);

        return query.getResultList();
    }

    @Override
    public Note getEntityByID(Integer id) {
        return sessionFactory.getCurrentSession().get(Note.class, id);
    }

    @Override
    public void insert(Note entity) {
        Session session = this.sessionFactory.getCurrentSession();
        session.save(entity);
    }

    @Override
    public void update(Note entity) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(entity);
    }

    @Override
    public void delete(Integer id) {
        Session session = sessionFactory.getCurrentSession();
        Note note = session.byId(Note.class).load(id);
        session.delete(note);
    }

}
