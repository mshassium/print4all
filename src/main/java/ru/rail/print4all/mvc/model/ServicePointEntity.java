package ru.rail.print4all.mvc.model;

import javax.persistence.*;

/**
 * Created by root on 21.06.15.
 */
@Entity
@Table(name = "service_point", schema = "public", catalog = "print4all")
public class ServicePointEntity {
    private int id;
    private ServiceEntity serviceByIdService;

    @Id
    @Column(name = "id", nullable = false, insertable = true, updatable = true)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ServicePointEntity that = (ServicePointEntity) o;

        if (id != that.id) return false;

        return true;
    }

    @Override
    public int hashCode() {
        return id;
    }

    @ManyToOne
    @JoinColumn(name = "id_service", referencedColumnName = "id_service", nullable = false)
    public ServiceEntity getServiceByIdService() {
        return serviceByIdService;
    }

    public void setServiceByIdService(ServiceEntity serviceByIdService) {
        this.serviceByIdService = serviceByIdService;
    }
}
