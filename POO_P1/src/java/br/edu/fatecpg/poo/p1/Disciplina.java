/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fatecpg.poo.p1;
import java.sql.*;
import java.util.ArrayList;
import br.edu.fatecpg.poo.p1.Listener;

/**
 *
 * @author yvezu
 */
public class Disciplina {
    
    private long rowId;
    private String nome;
    private String ementa;
    private int ciclo;
    private double nota;
    
    public static ArrayList<Disciplina> getList(){
        ArrayList<Disciplina>list = new ArrayList<>();
        Connection conn = null;
        Statement st = null;
        ResultSet r = null;
        
        try{
            conn = Listener.getConnection();
            st = conn.createStatement();
            r = st.executeQuery("SELECT rowId, * FROM disciplina");
            while(r.next()){
                list.add(new Disciplina(
                r.getLong("rowId"),
                r.getString("nome"),
                r.getString("ementa"),
                r.getInt("ciclo"),
                r.getDouble("nota")
                ));
            }
        }catch(Exception ex){
            System.out.println(ex);
        }
        return list;
    }
    
    public static void insert(String nome, String ementa, int ciclo, Double nota){
        Connection conn = null;
        PreparedStatement st = null;
        
        try{
            conn = Listener.getConnection();
            st = conn.prepareStatement("INSERT INTO disciplina VALUES (?,?,?,?)");
            st.setString(1,nome);
            st.setString(2,ementa);
            st.setInt(3,ciclo);
            st.setDouble(4,nota);
            st.execute();
        }catch(Exception ex){
            System.out.println(ex);
    }
    }
    public static void delete(long rowId){
        Connection conn = null;
        PreparedStatement st = null;
        
        try{
            conn = Listener.getConnection();
            st = conn.prepareStatement("DELETE FROM disciplina WHERE rowId=?");
            st.setLong(1,rowId);
            st.execute();
        }catch(Exception ex){
            System.out.println(ex);
        }
    }
    public Disciplina(long rowId, String nome, String ementa, int ciclo, Double nota) {
        this.rowId =rowId;
        this.nome = nome;
        this.ementa = ementa;
        this.ciclo = ciclo;
        this.nota = nota;
    }
    
    public Long getRowId(){
        return rowId;
    }
    public void setRowId(Long rowId) {
        this.rowId = rowId;
    }
    
    public String getNome(){
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    
    public String getEmenta(){
        return ementa;
    }
    public void setEmenta(String ementa) {
        this.ementa = ementa;
    }
    
    public int getCiclo(){
        return ciclo;
    }
    public void setCiclo(int ciclo) {
        this.ciclo = ciclo;
    }
    
    public double getNota(){
        return nota;
    }
    public void setNota(double nota) {
        this.nota = nota;
    }
    
   public static String getCreateStatement(){
       return "CREATE TABLE IF NOT EXISTS disciplina("
               +"nome VARCHAR(25) UNIQUE NOT NULL,"
               +"ementa VARCHAR(200) NOT NULL,"
               +"ciclo INT NOT NULL,"
               + "nota DOUBLE NOT NULL"
               +")";
   }
    
}