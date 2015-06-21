package ru.rail.print4all.mvc.model;

import javax.persistence.*;

/**
 * Created by root on 22.06.15.
 */
@Entity
@Table(name = "organisations", schema = "public", catalog = "print4all")
public class OrganisationsEntity {
    private int idOrganisation;
    private String name;

    @Id
    @Column(name = "id_organisation", nullable = false, insertable = true, updatable = true)
    public int getIdOrganisation() {
        return idOrganisation;
    }

    public void setIdOrganisation(int idOrganisation) {
        this.idOrganisation = idOrganisation;
    }

    @Basic
    @Column(name = "name", nullable = false, insertable = true, updatable = true, length = 200)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        OrganisationsEntity that = (OrganisationsEntity) o;

        if (idOrganisation != that.idOrganisation) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = idOrganisation;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        return result;
    }
}
