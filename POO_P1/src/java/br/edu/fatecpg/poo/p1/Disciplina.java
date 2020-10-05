/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fatecpg.poo.p1;

/**
 *
 * @author yvezu
 */
public class Disciplina {
    private String na;
    private long ra;
    private int qtdm;
    private String name;
    private String ementa;
    private int ciclo;
    private double nota;
    
public Disciplina(String na, long ra, int qtdm, String name, String ementa, int ciclo, double nota){
this.na = na;
this.ra = ra;
this.qtdm = qtdm;
this.name = name;
this.ementa = ementa;
this.ciclo = ciclo;
this.nota = nota;
}
public String getNameAluno(){
    return na;
}
public String setNameAluno(String na){
    this.na = na;
}
public long getRa(){
    return ra;
}
public long setRa(long ra){
    this.ra = ra;
}
public int getQtdm(){
    return qtdm;
}
public int setQtdm(int qtdm){
    this.qtdm = qtdm;
}
public String getName(){
    return name;
}
public String setName(String name){
    this.name = name;
}
public String getEmenta(){
    return ementa;
}
public String setEmenta(String ementa){
    this.ementa = ementa;
}
public int getCiclo(){
    return ciclo;
}
public int setCiclo(int ciclo){
    this.ciclo = ciclo;
}
public double getNota(){
    if(nota<0)
        this.nota = 0;
    else if(nota>10)
        this.nota = 10;
    else
        this.nota = nota;
    return nota;
}
public double setNota(double nota){
    this.nota = nota;
}
}