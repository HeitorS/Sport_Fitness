/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spot_fitness.entidade;

/**
 *
 * @author heito
 */
public class LoginBean {

    private int codUser;
    private String nameUser;
    private String pasUser;
    private boolean habilitado;
    private int codFun;

    public int getCodUser() {
        return codUser;
    }

    public void setCodUser(int codUser) {
        this.codUser = codUser;
    }

    public String getNameUser() {
        return nameUser;
    }

    public void setNameUser(String nameUser) {
        this.nameUser = nameUser;
    }

    public String getPasUser() {
        return pasUser;
    }

    public void setPasUser(String pasUser) {
        this.pasUser = pasUser;
    }

    public boolean isHabilitado() {
        return habilitado;
    }

    public void setHabilitado(boolean habilitado) {
        this.habilitado = habilitado;
    }

    public int getCodFun() {
        return codFun;
    }

    public void setCodFun(int codFun) {
        this.codFun = codFun;
    }

}
