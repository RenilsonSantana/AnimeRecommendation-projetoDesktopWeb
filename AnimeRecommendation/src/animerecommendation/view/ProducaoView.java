/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package animerecommendation.view;

import animerecommendation.model.Producao;
import javax.swing.JOptionPane;

/**
 *
 * @author BmnGamer
 */
public class ProducaoView {
    public static void exibirProducao(Producao producao){
        JOptionPane.showMessageDialog(null, producao);
    }
}
