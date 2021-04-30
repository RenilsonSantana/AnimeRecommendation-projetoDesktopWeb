/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package animerecommendation.view;

import animerecommendation.model.Anime;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author BmnGamer
 */
public class AnimeView {
    public static void exibirAnime(Anime anime){
        JOptionPane.showMessageDialog(null, anime);
    }
}
