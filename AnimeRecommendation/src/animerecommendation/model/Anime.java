/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package animerecommendation.model;

/**
 *
 * @author BmnGamer
 */
public class Anime {
    private int id;
    private String nome;
    private String genero;
    private int qtdEpisodios;
    private int qtdTemporadas;
    private int anoDeLancamento;
    private String sinopse;

    public Anime(int id) {
        this.id = id;
    }

    public Anime(String nome) {
        this.nome = nome;
    }

    public Anime(int id, String nome, String genero, int qtdEpisodios, int qtdTemporadas, int anoDeLancamento, String sinopse) {
        this.id = id;
        this.nome = nome;
        this.genero = genero;
        this.qtdEpisodios = qtdEpisodios;
        this.qtdTemporadas = qtdTemporadas;
        this.anoDeLancamento = anoDeLancamento;
        this.sinopse = sinopse;
    }

    public Anime(String nome, String genero, int qtdEpisodios, int qtdTemporadas, int anoDeLancamento, String sinopse) {
        this.nome = nome;
        this.genero = genero;
        this.qtdEpisodios = qtdEpisodios;
        this.qtdTemporadas = qtdTemporadas;
        this.anoDeLancamento = anoDeLancamento;
        this.sinopse = sinopse;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public int getQtdEpisodios() {
        return qtdEpisodios;
    }

    public void setQtdEpisodios(int qtdEpisodios) {
        this.qtdEpisodios = qtdEpisodios;
    }

    public int getQtdTemporadas() {
        return qtdTemporadas;
    }

    public void setQtdTemporadas(int qtdTemporadas) {
        this.qtdTemporadas = qtdTemporadas;
    }

    public int getAnoDeLancamento() {
        return anoDeLancamento;
    }

    public void setAnoDeLancamento(int anoDeLancamento) {
        this.anoDeLancamento = anoDeLancamento;
    }

    public String getSinopse() {
        return sinopse;
    }

    public void setSinopse(String sinopse) {
        this.sinopse = sinopse;
    }

    @Override
    public String toString() {
        return "Anime{" + "id=" + id + ", nome=" + nome + ", genero=" + genero + ", qtdEpisodios=" + qtdEpisodios + ", qtdTemporadas=" + qtdTemporadas + ", anoDeLancamento=" + anoDeLancamento + ", sinopse=" + sinopse + '}';
    }
    
    
}
