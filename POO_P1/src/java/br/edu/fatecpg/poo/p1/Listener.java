/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fatecpg.poo.p1;
import java.sql.*;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
/**
 *
 * @author yvezu
 */
public class Listener implements ServletContextListener{
    private static final String CLASS_NAME = "org.sqlite.JDBC";
    private static final String DB_URL = "jdbc:sqlite:bancoDados.db";
    
    public static Connection getConnection()throws Exception{
        return DriverManager.getConnection(DB_URL);
}
    
public void conetxtInitialize(ServletContextEvent e){
    Connection conn = null;
    Statement st = null;
    
    try{
        Class.forName(CLASS_NAME);
        conn = getConnection();
        st = conn.createStatement();
        st.execute(Disciplina.getCreateStatement());
    }catch(Exception ex){
        System.out.println(ex.getMessage());
    }
}
    @Override
    public void contextDestroyed(ServletContextEvent e){
        
    }
}