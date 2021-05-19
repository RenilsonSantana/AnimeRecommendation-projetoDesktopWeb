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
public class Producao {
    private int id;
    private int idAnime;
    private int idAutor;
    private String dataDeLancamento;

    public Producao(int id) {
        this.id = id;
    }

    public Producao(int idAnime, int idAutor, String dataDeLancamento) {
        this.idAnime = idAnime;
        this.idAutor = idAutor;
        this.dataDeLancamento = dataDeLancamento;
    }

    public Producao(int id, int idAnime, int idAutor, String dataDeLancamento) {
        this.id = id;
        this.idAnime = idAnime;
        this.idAutor = idAutor;
        this.dataDeLancamento = dataDeLancamento;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdAnime() {
        return idAnime;
    }

    public void setIdAnime(int idAnime) {
        this.idAnime = idAnime;
    }

    public int getIdAutor() {
        return idAutor;
    }

    public void setIdAutor(int idAutor) {
        this.idAutor = idAutor;
    }

    public String getDataDeLancamento() {
        return dataDeLancamento;
    }

    public void setDataDeLancamento(String dataDeLancamento) {
        this.dataDeLancamento = dataDeLancamento;
    }

    @Override
    public String toString() {
        return "Producao{" + "id=" + id + ", idAnime=" + idAnime + ", idAutor=" + idAutor + ", dataDeLancamento=" + dataDeLancamento + '}';
    }
    
    
}
