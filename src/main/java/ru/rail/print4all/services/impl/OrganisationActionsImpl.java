package ru.rail.print4all.services.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import ru.rail.print4all.mvc.model.OrganisationsEntity;
import ru.rail.print4all.services.OrganisationActions;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by root on 21.06.15.
 */
@Repository
public class OrganisationActionsImpl implements OrganisationActions {


    @Autowired
    SessionFactory sessionFactory;

    @Transactional
    public List<OrganisationsEntity> getAllOrganisations() {
        return sessionFactory.getCurrentSession().createCriteria(OrganisationsEntity.class).list();
    }

    @Transactional
    public int addNewOrganisation(OrganisationsEntity newOrganisation) {
        return 0;
    }

    @Transactional
    public int deleteOrganisation(int id) {
        return 0;
    }

    @Transactional
    public int deleteOrganisation(OrganisationsEntity id) {
        return 0;
    }
}
