/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fatecpg.poo;

/**
 *
 * @author WINDOWS 10
 */
public class Register {
     private String name;
    private int telephone;
    private String email;

    public Register(String name, int telephone, String email) {
        this.name = name;
        this.telephone = telephone;
        this.email = email;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setTelephone(int telephone) {
        this.telephone = telephone;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public int getTelephone() {
        return telephone;
    }

    public String getEmail() {
        return email;
    }
}

