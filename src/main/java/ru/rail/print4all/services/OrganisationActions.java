package ru.rail.print4all.services;

import ru.rail.print4all.mvc.model.OrganisationsEntity;

import java.util.List;

/**
 * Created by root on 21.06.15.
 */
public interface OrganisationActions {

    public List<OrganisationsEntity> getAllOrganisations();

    public int addNewOrganisation(OrganisationsEntity newOrganisation);

    public int deleteOrganisation (int id);

    public int deleteOrganisation (OrganisationsEntity id);

}
