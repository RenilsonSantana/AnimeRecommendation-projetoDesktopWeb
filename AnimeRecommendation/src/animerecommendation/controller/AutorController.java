/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package animerecommendation.controller;

import animerecommendation.Dao.AutorDao;
import animerecommendation.model.Autor;
import animerecommendation.view.AutorView;
import java.sql.SQLException;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author BmnGamer
 */
public class AutorController {
    static int id;
    static String nome;
    static int idade;
    
    public static void inserir() throws SQLException{
        nome = JOptionPane.showInputDialog("Nome");
        idade = Integer.parseInt(JOptionPane.showInputDialog("Idade"));
        Autor autorEntrada = new Autor(nome, idade);
        AutorDao autorDao = new AutorDao();
        Autor autorSaida = autorDao.inserir(autorEntrada);
        AutorView.exibirAutor(autorSaida);
    }
    
    public static void alterar() throws SQLException{
        id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
        nome = JOptionPane.showInputDialog("Nome");
        idade = Integer.parseInt(JOptionPane.showInputDialog("Idade"));
        Autor autorEntrada = new Autor(id, nome, idade);
        AutorDao autorDao = new AutorDao();
        Autor autorSaida = autorDao.alterar(autorEntrada);
        AutorView.exibirAutor(autorSaida);
    }
    
    public static void buscar() throws SQLException{
        id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
        Autor autorEntrada = new Autor(id);
        AutorDao autorDao = new AutorDao();
        Autor autorSaida = autorDao.buscar(autorEntrada);
        AutorView.exibirAutor(autorSaida);
    }
    
    public static void listar() throws SQLException{
        nome = JOptionPane.showInputDialog("Nome");
        Autor autorEntrada = new Autor(nome);
        AutorDao autorDao = new AutorDao();
        List<Autor> listaDeAutores = autorDao.listar(autorEntrada);
        listaDeAutores.forEach(AutorView::exibirAutor);
    }
    
    public static void excluir() throws SQLException{
        id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
        Autor autorEntrada = new Autor(id);
        AutorDao autorDao = new AutorDao();
        Autor autorSaida = autorDao.excluir(autorEntrada);
        AutorView.exibirAutor(autorSaida);
    }
}
