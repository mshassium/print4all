package ru.rail.print4all.services.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import ru.rail.print4all.mvc.model.ServiceEntity;
import ru.rail.print4all.services.ServiceActions;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by root on 22.06.15.
 */
@Repository
public class ServiceActionsImpl implements ServiceActions {

    @Autowired
    SessionFactory sessionFactory;

    @Transactional
    public List<ServiceEntity> getAllServices() {
        return sessionFactory.getCurrentSession().createCriteria(ServiceEntity.class).list();
    }
}
