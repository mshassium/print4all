package ru.rail.print4all.mvc.model;

import javax.persistence.*;
import java.util.Collection;

/**
 * Created by root on 21.06.15.
 */
@Entity
@Table(name = "point", schema = "public", catalog = "print4all")
public class PointEntity {
    private int idPoint;
    private String openingTimes;
    private String address;
    private String coordinates;
    private Integer idOrganisation;
    private OrganisationsEntity organisationsByIdOrganisation;
    private Collection<ServicePointEntity> servicePointsByIdPoint;

    @Id
    @Column(name = "id_point", nullable = false, insertable = true, updatable = true)
    public int getIdPoint() {
        return idPoint;
    }

    public void setIdPoint(int idPoint) {
        this.idPoint = idPoint;
    }

    @Basic
    @Column(name = "opening_times", nullable = false, insertable = true, updatable = true, length = 2147483647)
    public String getOpeningTimes() {
        return openingTimes;
    }

    public void setOpeningTimes(String openingTimes) {
        this.openingTimes = openingTimes;
    }

    @Basic
    @Column(name = "address", nullable = false, insertable = true, updatable = true, length = 200)
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Basic
    @Column(name = "coordinates", nullable = false, insertable = true, updatable = true, length = 200)
    public String getCoordinates() {
        return coordinates;
    }

    public void setCoordinates(String coordinates) {
        this.coordinates = coordinates;
    }

    @Basic
    @Column(name = "id_organisation", nullable = true, insertable = true, updatable = true)
    public Integer getIdOrganisation() {
        return idOrganisation;
    }

    public void setIdOrganisation(Integer idOrganisation) {
        this.idOrganisation = idOrganisation;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        PointEntity that = (PointEntity) o;

        if (idPoint != that.idPoint) return false;
        if (openingTimes != null ? !openingTimes.equals(that.openingTimes) : that.openingTimes != null) return false;
        if (address != null ? !address.equals(that.address) : that.address != null) return false;
        if (coordinates != null ? !coordinates.equals(that.coordinates) : that.coordinates != null) return false;
        if (idOrganisation != null ? !idOrganisation.equals(that.idOrganisation) : that.idOrganisation != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = idPoint;
        result = 31 * result + (openingTimes != null ? openingTimes.hashCode() : 0);
        result = 31 * result + (address != null ? address.hashCode() : 0);
        result = 31 * result + (coordinates != null ? coordinates.hashCode() : 0);
        result = 31 * result + (idOrganisation != null ? idOrganisation.hashCode() : 0);
        return result;
    }

    @ManyToOne
    @JoinColumn(name = "id_organisation", referencedColumnName = "id_organisation")
    public OrganisationsEntity getOrganisationsByIdOrganisation() {
        return organisationsByIdOrganisation;
    }

    public void setOrganisationsByIdOrganisation(OrganisationsEntity organisationsByIdOrganisation) {
        this.organisationsByIdOrganisation = organisationsByIdOrganisation;
    }

    @OneToMany(mappedBy = "pointByIdPoint")
    public Collection<ServicePointEntity> getServicePointsByIdPoint() {
        return servicePointsByIdPoint;
    }

    public void setServicePointsByIdPoint(Collection<ServicePointEntity> servicePointsByIdPoint) {
        this.servicePointsByIdPoint = servicePointsByIdPoint;
    }
}
