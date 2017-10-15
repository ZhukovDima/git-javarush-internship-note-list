package ru.javarush.internship.controller;

import ru.javarush.internship.entity.Note;
import ru.javarush.internship.service.NoteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created by Dima on 15.10.2017.
 */
@RestController
public class NoteController {

    private NoteService noteService;

    private static final String VIEW_INDEX = "index";

    @Autowired(required=true)
    @Qualifier(value="noteService")
    public void setNoteService(NoteService noteService) {
        this.noteService = noteService;
    }

    @GetMapping("/getNotes")
    public ResponseEntity<List<Note>> getNotes() {
        List<Note> notes = noteService.listNotes();
        return ResponseEntity.ok().body(notes);
    }

    @PostMapping("/addNote")
    public void addNote(@RequestBody Note note) {
        noteService.addNote(note);
    }

    @GetMapping("/note/{id}")
    public ResponseEntity<Note> get(@PathVariable("id") int id) {
        Note book = noteService.getNoteById(id);
        return ResponseEntity.ok().body(book);
    }

    @PostMapping("/updateNote")
    public ResponseEntity<?> update(@RequestBody Note note) {
        noteService.updateNote(note);
        return ResponseEntity.ok().body("{\"status\":\"Note has been deleted successfully.\"}");
    }

    @DeleteMapping("/deleteNote/{id}")
    public ResponseEntity<?>  delete(@PathVariable("id") int id) {
        noteService.removeNote(id);
        return ResponseEntity.ok().body("{\"status\":\"Note has been deleted successfully.\"}");
    }
}
