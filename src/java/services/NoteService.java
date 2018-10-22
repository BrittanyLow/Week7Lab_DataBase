
package services;

import database.NoteDB;
import java.util.List;
import models.Note;

/**
 *
 * @author 707114
 */
public class NoteService {
    private NoteDB noteDB;
    
    public NoteService(){
        noteDB = new NoteDB();
    }

     public Note get(int id) throws Exception {
        return noteDB.getNote(id);
    }

    public List<Note> getAll() throws Exception {
        return noteDB.getAll();
    }

    public int update(int id, String content ) throws Exception {
        Note note = new Note(id, content);
        return noteDB.update(note);
    }

    public int delete(int id) throws Exception {
        Note deletedNote = noteDB.getNote(id);
        return noteDB.delete(deletedNote);
    }

    public int insert(String content) throws Exception {
        Note note = new Note(content);
//       create the date 
        return noteDB.insert(note);
    }

    public Note get(String selectedID) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
