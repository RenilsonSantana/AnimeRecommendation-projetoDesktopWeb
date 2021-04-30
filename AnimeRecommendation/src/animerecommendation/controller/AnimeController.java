/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package animerecommendation.controller;

import animerecommendation.Dao.AnimeDao;
import animerecommendation.model.Anime;
import animerecommendation.view.AnimeView;
import java.sql.SQLException;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author BmnGamer
 */
public class AnimeController {
    static int id;
    static String nome;
    static String genero;
    static int qtdEpisodios;
    static int qtdTemporadas;
    static int anoDeLancamento;
    static String sinopse;
    
    //static ControlePessoa contPes;
    
    public static void inserir() throws SQLException, ClassNotFoundException {
        nome = JOptionPane.showInputDialog("NOME");
        genero = JOptionPane.showInputDialog("GENERO");
        qtdEpisodios = Integer.parseInt(JOptionPane.showInputDialog("QUANTIDADE DE EPISODIOS"));
        qtdTemporadas = Integer.parseInt(JOptionPane.showInputDialog("QUANTIDADE DE TEMPORADAS"));
        anoDeLancamento = Integer.parseInt(JOptionPane.showInputDialog("ANO DE LANÇAMENTO"));
        sinopse = JOptionPane.showInputDialog("SINOPSE");
        Anime animeEntrada = new Anime(nome, genero, qtdEpisodios, qtdTemporadas, anoDeLancamento, sinopse);
        AnimeDao animeDao = new AnimeDao();
        Anime animeSaida = animeDao.inserir(animeEntrada);
        AnimeView.exibirAnime(animeSaida);
    }
    
    public void iniciarDao(){
        
    }
    
    public static void alterar() throws SQLException, ClassNotFoundException {
        id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
        nome = JOptionPane.showInputDialog("NOME");
        genero = JOptionPane.showInputDialog("GENERO");
        qtdEpisodios = Integer.parseInt(JOptionPane.showInputDialog("QUANTIDADE DE EPISODIOS"));
        qtdTemporadas = Integer.parseInt(JOptionPane.showInputDialog("QUANTIDADE DE TEMPORADAS"));
        anoDeLancamento = Integer.parseInt(JOptionPane.showInputDialog("ANO DE LANÇAMENTO"));
        sinopse = JOptionPane.showInputDialog("SINOPSE");
        Anime animeEntrada = new Anime(id, nome, genero, qtdEpisodios, qtdTemporadas, anoDeLancamento, sinopse);
        AnimeDao animeDao = new AnimeDao();
        Anime animeSaida = animeDao.alterar(animeEntrada);
        AnimeView.exibirAnime(animeSaida);
    }
    
        public static void buscar() throws SQLException, ClassNotFoundException {
        id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
        Anime animeEntrada = new Anime(id);
        AnimeDao animeDao = new AnimeDao();
        Anime animeSaida = animeDao.buscar(animeEntrada);
        AnimeView.exibirAnime(animeSaida);
        
    }

    public static void listar() throws SQLException, ClassNotFoundException {
        nome = JOptionPane.showInputDialog("NOME");
        Anime animeEntrada = new Anime(nome);
        AnimeDao animeDao = new AnimeDao();
        List<Anime> listaDeAnimes = animeDao.listar(animeEntrada);
        listaDeAnimes.forEach(AnimeView::exibirAnime);
    }

    public static void excluir() throws SQLException, ClassNotFoundException {
        id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
        Anime animeEntrada = new Anime(id);
        AnimeDao animeDao = new AnimeDao();
        Anime animeSaida = animeDao.excluir(animeEntrada);
        AnimeView.exibirAnime(animeSaida);
    }
}
