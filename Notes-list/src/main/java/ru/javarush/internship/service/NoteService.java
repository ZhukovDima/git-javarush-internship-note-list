package ru.javarush.internship.service;

import ru.javarush.internship.entity.Note;

import java.util.List;

/**
 * Created by admin on 11.10.2017.
 */
public interface NoteService {
    void addNote(Note note);
    void updateNote(Note note);
    List<Note> listNotes();
    Note getNoteById(int id);
    void removeNote(int id);
}
