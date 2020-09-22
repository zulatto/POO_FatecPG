/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fatecpg.poo;

/**
 *
 * @author bruno
 */
public class Contato {

    private String name;
    private int telefone;
    private String email;

    public Contato(String name, int telefone, String email) {
        this.name = name;
        this.telefone = telefone;
        this.email = email;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setTelefone(int telefone) {
        this.telefone = telefone;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public int getTelefone() {
        return telefone;
    }

    public String getEmail() {
        return email;
    }
}
