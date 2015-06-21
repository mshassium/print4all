package ru.rail.print4all.mvc.model;

import javax.persistence.Column;
import javax.persistence.Id;
import java.io.Serializable;

/**
 * Created by root on 21.06.15.
 */
public class UsersEntityPK implements Serializable {
    private int id;
    private String email;

    @Column(name = "id", nullable = false, insertable = true, updatable = true)
    @Id
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Column(name = "email", nullable = false, insertable = true, updatable = true, length = 255)
    @Id
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        UsersEntityPK that = (UsersEntityPK) o;

        if (id != that.id) return false;
        if (email != null ? !email.equals(that.email) : that.email != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (email != null ? email.hashCode() : 0);
        return result;
    }
}
