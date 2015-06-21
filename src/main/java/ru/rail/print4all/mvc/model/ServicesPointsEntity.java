package ru.rail.print4all.mvc.model;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Created by root on 21.06.15.
 */
@Entity
@Table(name = "services_points", schema = "public", catalog = "print4all")
public class ServicesPointsEntity {
    private PointEntity pointByIdPoint;

    @ManyToOne
    @JoinColumn(name = "id_point", referencedColumnName = "id_point", nullable = false)
    public PointEntity getPointByIdPoint() {
        return pointByIdPoint;
    }

    public void setPointByIdPoint(PointEntity pointByIdPoint) {
        this.pointByIdPoint = pointByIdPoint;
    }
}
