/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package animerecommendation.Dao;

import animerecommendation.model.Producao;
import animerecommendation.util.ConexaoDb;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author BmnGamer
 */
public class ProducaoDao {

    private final Connection c;

    public ProducaoDao() {
        this.c = new ConexaoDb().getConnection();
    }

    public Producao inserir(Producao producao) throws SQLException {
        String sql = "insert into tbPRODUCAO" + " (id_Anime,id_Autor,data_lancamento)" + " values (?,?,?)";

        // seta os valores
        try ( // prepared statement para inserção
                PreparedStatement stmt = c.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            // seta os valores
            stmt.setInt(1, producao.getIdAnime());
            stmt.setInt(2, producao.getIdAutor());
            stmt.setString(3, producao.getDataDeLancamento());
            // executa
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            if (rs.next()) {
                int id = rs.getInt(1);
                producao.setId(id);
            }
        }
        c.close();
        return producao;
    }
    
    public Producao alterar(Producao producao) throws SQLException {
        String sql = "UPDATE tbPRODUCAO SET id_Anime = ?, id_Autor = ?, data_lancamento = ? WHERE id = ?";
        // seta os valores
        // prepared statement para inserção
        try (PreparedStatement stmt = c.prepareStatement(sql)) {
            // seta os valores
            stmt.setInt(1, producao.getIdAnime());
            stmt.setInt(2, producao.getIdAutor());
            stmt.setString(3, producao.getDataDeLancamento());
            stmt.setInt(4, producao.getId());
            // executa
            stmt.execute();
        }
        c.close();
        return producao;
    }
    
    public Producao buscar(Producao producao) throws SQLException {
        String sql = "select * from tbPRODUCAO WHERE id = ?";
        Producao retorno;
        // seta os valores
        try (PreparedStatement stmt = this.c.prepareStatement(sql)) {
            // seta os valores
            stmt.setInt(1, producao.getId());
            // executa
            ResultSet rs = stmt.executeQuery();
            retorno = null;
            while (rs.next()) {
                // criando o objeto Usuario
                retorno = new Producao(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4));
                // adiciona o usu à lista de pessoa
            }
        }
        c.close();
        return retorno;
    }
    
    public List<Producao> listar() throws SQLException {
        // usus: array armazena a lista de registros
        List<Producao> listaDeProducoes = new ArrayList<>();

        String sql = "select * from tbPRODUCAO";
        // seta os valores
        try (PreparedStatement stmt = this.c.prepareStatement(sql)) {
            // seta os valores

            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                // criando o objeto Usuario
                Producao producaoSaida = new Producao(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4));
                // adiciona o usu à lista de usus
                listaDeProducoes.add(producaoSaida);
            }
            rs.close();
        }
        return listaDeProducoes;
    }
    
    public Producao excluir(Producao producao) throws SQLException {
        String sql = "delete from tbPRODUCAO WHERE id = ?";
        // seta os valores
        // prepared statement para inserção
        try (PreparedStatement stmt = c.prepareStatement(sql)) {
            // seta os valores
            stmt.setInt(1, producao.getId());
            // executa
            stmt.execute();
        }
        c.close();
        return producao;
    }
}
