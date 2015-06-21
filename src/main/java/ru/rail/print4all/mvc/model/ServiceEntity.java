package ru.rail.print4all.mvc.model;

import javax.persistence.*;
import java.util.Collection;

/**
 * Created by root on 21.06.15.
 */
@Entity
@Table(name = "service", schema = "public", catalog = "print4all")
public class ServiceEntity {
    private int idService;
    private String name;
    private String price;
    private Collection<ServicePointEntity> servicePointsByIdService;

    @Id
    @Column(name = "id_service", nullable = false, insertable = true, updatable = true)
    public int getIdService() {
        return idService;
    }

    public void setIdService(int idService) {
        this.idService = idService;
    }

    @Basic
    @Column(name = "name", nullable = false, insertable = true, updatable = true, length = 300)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "price", nullable = false, insertable = true, updatable = true, length = 20)
    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ServiceEntity that = (ServiceEntity) o;

        if (idService != that.idService) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (price != null ? !price.equals(that.price) : that.price != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = idService;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (price != null ? price.hashCode() : 0);
        return result;
    }

    @OneToMany(mappedBy = "serviceByIdService")
    public Collection<ServicePointEntity> getServicePointsByIdService() {
        return servicePointsByIdService;
    }

    public void setServicePointsByIdService(Collection<ServicePointEntity> servicePointsByIdService) {
        this.servicePointsByIdService = servicePointsByIdService;
    }
}
