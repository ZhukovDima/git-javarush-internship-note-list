package ru.javarush.internship.service;

import ru.javarush.internship.dao.NoteDAO;
import ru.javarush.internship.entity.Note;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by admin on 11.10.2017.
 */
public class NoteServiceImpl implements NoteService {

    private NoteDAO noteDAO;

    public void setNoteDAO(NoteDAO noteDAO) {
        this.noteDAO = noteDAO;
    }

    @Override
    @Transactional
    public void addNote(Note note) {
        noteDAO.insert(note);
    }

    @Override
    @Transactional
    public void updateNote(Note note) {
        noteDAO.update(note);
    }

    @Override
    @Transactional
    public List<Note> listNotes() {
        return noteDAO.getAll();
    }

    @Override
    @Transactional
    public Note getNoteById(int id) {
        return noteDAO.getEntityByID(id);
    }

    @Override
    @Transactional
    public void removeNote(int id) {
        noteDAO.delete(id);
    }

}
