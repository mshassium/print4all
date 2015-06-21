package ru.rail.print4all.mvc.model;

import javax.persistence.*;
import java.io.Serializable;

/**
 * User: rakh1213
 */
@Entity
@Table(name = "users")
public class User implements Serializable {

    public User (String firstName,String lastName, String email, String password){
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
    }

    public User (String email, String password){
        this.email = email;
        this.password = password;
    }

    @GeneratedValue
    @Id
    @Column (name = "id")
    private Integer id;

    @Column(name = "fistname")
    private String firstName;

    @Column(name = "lastName")
    private String lastName;

    @Column(name = "login")
    private String login;

    @Column(name = "email")
    @Id
    private String email;

    @Column(name = "password")
    private String password;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
