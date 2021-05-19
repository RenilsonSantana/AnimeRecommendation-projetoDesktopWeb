/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package animerecommendation.view;

import animerecommendation.model.Autor;
import javax.swing.JOptionPane;

/**
 *
 * @author BmnGamer
 */
public class AutorView {
    public static void exibirAutor(Autor autor){
        JOptionPane.showMessageDialog(null, autor);
    }
}
