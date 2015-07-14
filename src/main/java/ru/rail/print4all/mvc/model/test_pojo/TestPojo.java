package ru.rail.print4all.mvc.model.test_pojo;

import java.io.Serializable;

/**
 * Created by root on 13.07.15.
 */
public class TestPojo implements Serializable {

    private int id;
    private int config;
    private String patch;
    private int countPage;
    private boolean payCjeck;

    public TestPojo(int id, int config, String patch, int countPage, boolean payCjeck) {
        this.id = id;
        this.config = config;
        this.patch = patch;
        this.countPage = countPage;
        this.payCjeck = payCjeck;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getConfig() {
        return config;
    }

    public void setConfig(int config) {
        this.config = config;
    }

    public String getPatch() {
        return patch;
    }

    public void setPatch(String patch) {
        this.patch = patch;
    }

    public int getCountPage() {
        return countPage;
    }

    public void setCountPage(int countPage) {
        this.countPage = countPage;
    }

    public boolean isPayCjeck() {
        return payCjeck;
    }

    public void setPayCjeck(boolean payCjeck) {
        this.payCjeck = payCjeck;
    }
}
