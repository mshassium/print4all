package ru.rail.print4all.mvc.model;

import javax.persistence.*;

/**
 * Created by root on 21.06.15.
 */
@Entity
@Table(name = "service_point", schema = "public", catalog = "print4all")
public class ServicePointEntity {
    private int id;
    private int idService;
    private int idPoint;
    private PointEntity pointByIdPoint;
    private ServiceEntity serviceByIdService;

    @Id
    @Column(name = "id", nullable = false, insertable = true, updatable = true)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "id_service", nullable = false, insertable = true, updatable = true)
    public int getIdService() {
        return idService;
    }

    public void setIdService(int idService) {
        this.idService = idService;
    }

    @Basic
    @Column(name = "id_point", nullable = false, insertable = true, updatable = true)
    public int getIdPoint() {
        return idPoint;
    }

    public void setIdPoint(int idPoint) {
        this.idPoint = idPoint;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ServicePointEntity that = (ServicePointEntity) o;

        if (id != that.id) return false;
        if (idService != that.idService) return false;
        if (idPoint != that.idPoint) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + idService;
        result = 31 * result + idPoint;
        return result;
    }

    @ManyToOne
    @JoinColumn(name = "id_point", referencedColumnName = "id_point", nullable = false)
    public PointEntity getPointByIdPoint() {
        return pointByIdPoint;
    }

    public void setPointByIdPoint(PointEntity pointByIdPoint) {
        this.pointByIdPoint = pointByIdPoint;
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
