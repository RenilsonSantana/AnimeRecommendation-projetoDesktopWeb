/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package animerecommendation.controller;

import animerecommendation.Dao.AutorDao;
import animerecommendation.Dao.ProducaoDao;
import static animerecommendation.controller.AutorController.nome;
import animerecommendation.model.Autor;
import animerecommendation.model.Producao;
import animerecommendation.view.AutorView;
import animerecommendation.view.ProducaoView;
import java.sql.SQLException;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author BmnGamer
 */
public class ProducaoController {
    static int id;
    static int idAnime;
    static int idAutor;
    static String dataLancamento;
    
    public static void inserir() throws SQLException{
        idAnime = Integer.parseInt(JOptionPane.showInputDialog("ID Anime"));
        idAutor = Integer.parseInt(JOptionPane.showInputDialog("ID Autor"));
        dataLancamento = JOptionPane.showInputDialog("Data de Lançamento");
        Producao producaoEntrada = new Producao(idAnime, idAutor, dataLancamento);
        ProducaoDao producaoDao = new ProducaoDao();
        Producao producaoSaida = producaoDao.inserir(producaoEntrada);
        ProducaoView.exibirProducao(producaoSaida);
    }
    
    public static void alterar() throws SQLException{
        id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
        idAnime = Integer.parseInt(JOptionPane.showInputDialog("ID Anime"));
        idAutor = Integer.parseInt(JOptionPane.showInputDialog("ID Autor"));
        dataLancamento = JOptionPane.showInputDialog("Data de Lançamento");
        Producao producaoEntrada = new Producao(id, idAnime, idAutor, dataLancamento);
        ProducaoDao producaoDao = new ProducaoDao();
        Producao producaoSaida = producaoDao.alterar(producaoEntrada);
        ProducaoView.exibirProducao(producaoSaida);
    }
    
    public static void buscar() throws SQLException{
        id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
        Producao producaoEntrada = new Producao(id);
        ProducaoDao producaoDao = new ProducaoDao();
        Producao producaoSaida = producaoDao.buscar(producaoEntrada);
        ProducaoView.exibirProducao(producaoSaida);
    }
    
    public static void listar() throws SQLException{
        ProducaoDao producaoDao = new ProducaoDao();
        List<Producao> listaDeProducoes = producaoDao.listar();
        listaDeProducoes.forEach(ProducaoView::exibirProducao);
    }
    
    public static void excluir() throws SQLException{
        id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
        Producao producaoEntrada = new Producao(id);
        ProducaoDao producaoDao = new ProducaoDao();
        Producao producaoSaida = producaoDao.excluir(producaoEntrada);
        ProducaoView.exibirProducao(producaoSaida);
    }
}
