package ru.rail.print4all.services.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import ru.rail.print4all.mvc.model.PointEntity;
import ru.rail.print4all.services.PointActions;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by root on 04.07.15.
 */
public class PointActionsImpl implements PointActions {
    private Logger log = LoggerFactory.getLogger(this.getClass().getName());

    @Autowired
    private SessionFactory sessionFactory;

    @Transactional
    public List<PointEntity> getAllCoordinates() {
        log.info("GET ALL COORDINATES START");
        Session currentSession = sessionFactory.getCurrentSession();
        List<PointEntity> list = currentSession.createCriteria(PointEntity.class).list();
        log.info("GET ALL COORDINATES FINISH");
        return list;
    }
}
