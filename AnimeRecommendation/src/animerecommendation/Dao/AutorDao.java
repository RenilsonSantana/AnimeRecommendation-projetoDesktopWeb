/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package animerecommendation.Dao;

import animerecommendation.model.Autor;
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
public class AutorDao {

    private final Connection c;

    public AutorDao() {
        this.c = new ConexaoDb().getConnection();
    }

    public Autor inserir(Autor autor) throws SQLException {
        String sql = "insert into tbAUTOR" + " (nome_Autor,idade)" + " values (?,?)";

        // seta os valores
        try ( // prepared statement para inserção
                PreparedStatement stmt = c.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            // seta os valores
            stmt.setString(1, autor.getNome());
            stmt.setInt(2, autor.getIdade());
            
            // executa
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            if (rs.next()) {
                int id = rs.getInt(1);
                autor.setId(id);
            }
        }
        c.close();
        return autor;
    }
    
    public Autor alterar (Autor autor) throws SQLException {
        String sql = "UPDATE tbAUTOR SET nome_Autor = ?, idade = ? WHERE id = ?";
        // seta os valores
        // prepared statement para inserção
        try (PreparedStatement stmt = c.prepareStatement(sql)) {
            // seta os valores
            stmt.setString(1,autor.getNome());
            stmt.setInt(2,autor.getIdade());
            stmt.setInt(3, autor.getId());
            // executa
            stmt.execute();
        }
        c.close();
        return autor;
    }
   
    public Autor buscar (Autor autor) throws SQLException {
        String sql = "select * from tbAUTOR WHERE id = ?";
        Autor retorno;
        // seta os valores
        try (PreparedStatement stmt = this.c.prepareStatement(sql)) {
            // seta os valores
            stmt.setInt(1,autor.getId());
            // executa
            ResultSet rs = stmt.executeQuery();
            retorno = null;
            while (rs.next()) {
                // criando o objeto Usuario
                retorno = new Autor(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3));
                // adiciona o usu à lista de pessoa
            }
        }
        c.close();
        return retorno;
    }
    
        public List<Autor> listar (Autor autor) throws SQLException {
         // usus: array armazena a lista de registros
        List<Autor> listaDeAutores = new ArrayList<>();
       
        String sql = "select * from tbAUTOR where nome_Autor like ?";
        // seta os valores
        try (PreparedStatement stmt = this.c.prepareStatement(sql)) {
            // seta os valores
            stmt.setString(1,"%" + autor.getNome()+ "%");
            
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                // criando o objeto Usuario
                Autor autorSaida = new Autor(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3));
                // adiciona o usu à lista de usus
                listaDeAutores.add(autorSaida);
            }
            rs.close();
        }
        return listaDeAutores;
    }
    
    public Autor excluir (Autor autor) throws SQLException {
         String sql = "delete from tbAUTOR WHERE id = ?";
        // seta os valores
        // prepared statement para inserção
        try (PreparedStatement stmt = c.prepareStatement(sql)) {
            // seta os valores
            stmt.setInt(1,autor.getId());
            // executa
            stmt.execute();
        }
        c.close();
        return autor;
    }
    
}
