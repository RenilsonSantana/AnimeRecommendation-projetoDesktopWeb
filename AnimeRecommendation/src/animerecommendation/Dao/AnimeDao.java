/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package animerecommendation.Dao;

import animerecommendation.model.Anime;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import animerecommendation.util.ConexaoDb;

/**
 *
 * @author BmnGamer
 */
public class AnimeDao {

    private final Connection c;

    public AnimeDao() {
        this.c = new ConexaoDb().getConnection();
    }

    public Anime inserir(Anime anime) throws SQLException {
        String sql = "insert into tbANIMES" + " (nome,genero,episodios,temporadas,anoLancamento,sinopse)" + " values (?,?,?,?,?,?)";

        // seta os valores
        try ( // prepared statement para inserção
                PreparedStatement stmt = c.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            // seta os valores
            stmt.setString(1, anime.getNome());
            stmt.setString(2, anime.getGenero());
            stmt.setInt(3, anime.getQtdEpisodios());
            stmt.setInt(4, anime.getQtdTemporadas());
            stmt.setInt(5, anime.getAnoDeLancamento());
            stmt.setString(6, anime.getSinopse());
            // executa
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            if (rs.next()) {
                int id = rs.getInt(1);
                anime.setId(id);
            }
        }
        c.close();
        return anime;
    }

    public Anime alterar(Anime anime) throws SQLException {
        String sql = "UPDATE tbANIMES SET nome = ?, genero = ?, episodios = ?, temporadas = ?, anoLancamento = ?, sinopse = ? WHERE id = ?";
        // seta os valores
        // prepared statement para inserção
        try (PreparedStatement stmt = c.prepareStatement(sql)) {
            // seta os valores
            stmt.setString(1, anime.getNome());
            stmt.setString(2, anime.getGenero());
            stmt.setInt(3, anime.getQtdEpisodios());
            stmt.setInt(4, anime.getQtdTemporadas());
            stmt.setInt(5, anime.getAnoDeLancamento());
            stmt.setString(6, anime.getSinopse());
            stmt.setInt(7, anime.getId());
            // executa
            stmt.execute();
        }
        c.close();
        return anime;
    }

    public Anime buscar(Anime anime) throws SQLException {
        String sql = "select * from tbANIMES WHERE id = ?";
        Anime retorno;
        // seta os valores
        try (PreparedStatement stmt = this.c.prepareStatement(sql)) {
            // seta os valores
            stmt.setInt(1, anime.getId());
            // executa
            ResultSet rs = stmt.executeQuery();
            retorno = null;
            while (rs.next()) {
                // criando o objeto Usuario
                retorno = new Anime(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getString(7));
                // adiciona o usu à lista de pessoa
            }
        }
        c.close();
        return retorno;
    }

    public List<Anime> listar(Anime anime) throws SQLException {
        // usus: array armazena a lista de registros
        List<Anime> listaDeAnimes = new ArrayList<>();

        String sql = "select * from tbANIMES where nome like ?";
        // seta os valores
        try (PreparedStatement stmt = this.c.prepareStatement(sql)) {
            // seta os valores
            stmt.setString(1, "%" + anime.getNome() + "%");

            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                // criando o objeto Usuario
                Anime animeSaida = new Anime(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getString(7));
                // adiciona o usu à lista de usus
                listaDeAnimes.add(animeSaida);
            }
            rs.close();
        }
        return listaDeAnimes;
    }

    public Anime excluir(Anime anime) throws SQLException {
        String sql = "delete from tbANIMES WHERE id = ?";
        // seta os valores
        // prepared statement para inserção
        try (PreparedStatement stmt = c.prepareStatement(sql)) {
            // seta os valores
            stmt.setInt(1, anime.getId());
            // executa
            stmt.execute();
        }
        c.close();
        return anime;
    }

    public List<Anime> litarAnimesPorGenero(Anime anime) throws SQLException {
        // usus: array armazena a lista de registros
        List<Anime> listaDeAnimes = new ArrayList<>();

        String sql = "select * from tbANIMES where genero like ?";
        // seta os valores
        try (PreparedStatement stmt = this.c.prepareStatement(sql)) {
            // seta os valores
            stmt.setString(1, "%" + anime.getNome() + "%");

            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                // criando o objeto Usuario
                Anime animeSaida = new Anime(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getString(7));
                // adiciona o usu à lista de usus
                listaDeAnimes.add(animeSaida);
            }
            rs.close();
        }
        return listaDeAnimes;
    }
}
