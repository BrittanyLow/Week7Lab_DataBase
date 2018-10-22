package models;

import java.util.Date;

/**
 *
 * @author 707114
 */
public class Note {

    private int id;
    Date dateCreated;
    private String content;

    public Note(int id, String content, Date dateCreated) {
        this.id = id;
        this.content = content;
        this.dateCreated = dateCreated;
    }

    public Note(String content) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public Note(int id, String content) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public int getId() {
        return id;
    }

    public String getContent() {
        return content;
    }

}
