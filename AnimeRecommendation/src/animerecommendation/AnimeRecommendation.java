/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package animerecommendation;

import animerecommendation.controller.AnimeController;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author BmnGamer
 */
public class AnimeRecommendation {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args)throws SQLException, ClassNotFoundException{
        int opcao = Integer.parseInt(JOptionPane.showInputDialog("Bem vindo ao sistema de cadastro de animes!\n\nEscolha uma das opçôes abaixo:\n1)Inserir\n2)Alterar\n3)Buscar\n4)Listar\n5)Excluir"));
        switch(opcao){
            case 1:
                AnimeController.inserir();
                break;
            case 2:
                AnimeController.alterar();
                break;
            case 3:
                AnimeController.buscar();
                break;
            case 4:
                AnimeController.listar();
                break;
            case 5:
                AnimeController.excluir();
                break;
            default:
                JOptionPane.showMessageDialog(null, "Opção inválida!");
        }
    }
}
