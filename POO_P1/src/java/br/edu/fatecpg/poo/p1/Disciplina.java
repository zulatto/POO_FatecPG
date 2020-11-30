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

    private long linha;
    private String nome;
    private String ementa;
    private Integer ciclo;
    private Double nota;
    
    public static ArrayList<Disciplina> getList(){
        ArrayList<Disciplina> list = new ArrayList<>();
        Connection conn = null;
        Statement st = null;
        ResultSet rs = null;
        
        try{
            conn=Listener.getConnection();
            st=conn.createStatement();
            rs = st.executeQuery("SELECT linha, * FROM disciplina");
            while(rs.next()){
                list.add(new Disciplina(
                        rs.getLong("linha"),
                        rs.getString("nome"),
                        rs.getInt("ciclo"),
                        rs.getString("ementa"),
                        rs.getDouble("nota")
            ));
            }
        }catch(Exception e){
            System.out.println(e);
        }
        return list;
    }
    public static void insert(String nome, Integer ciclo, String ementa, Double nota){
        Connection conn = null;
        PreparedStatement st = null;
        
        try{
            conn = Listener.getConnection();
            st = conn.prepareStatement("INSERT INTO disciplina VALUES(?,?,?,?)");
            st.setString(1,nome);
            st.setInt(2,ciclo);
            st.setString(3,ementa);
            st.setDouble(4,nota);
            st.execute();
        }catch(Exception e){
            System.out.println(e);
        }
    }
            
          public static void delete(long linha){
              Connection conn = null;
              PreparedStatement st = null;
              
              try{
                  conn = Listener.getConnection();
                  st = conn.prepareStatement("DELETE FROM disciplina WHERE linha=?");
                  st.setLong(1,linha);
                  st.execute();
          }catch(Exception e){
              System.out.println(e);
          }  
          }
          
    public Disciplina(long linha, String nome, String ementa, Integer ciclo, Double nota) {
        this.linha = linha;
        this.nome = nome;
        this.ementa = ementa;
        this.ciclo = ciclo;
        this.nota = nota;
    }
    
    public long getLinha(){
        return linha;
    }
    public void setLinha(long linha){
        this.linha=linha;
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
                +"nome VARCHAR(50) UNIQUE NOT NULL,"
                +"ciclo INT NOT NULL,"
                +"ementa VARCHAR(200) NOT NULL,"
                +"nota DOUBLE NOT NULL"
                +")";
    }
    
}