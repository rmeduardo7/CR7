/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fifa2067;

/**
 *
 * @author Fundatec
 */
public class Partida {
    int golsTime1 = 0;
    int golsTime2 = 0;
    
    public void golTime1(){
        golsTime1++;
    }
    public void golTime2(){
        golsTime2++;
        
    }
    public void mostrarPlacar(){
        System.out.println("Placar: "+ golsTime1+ " x "+ golsTime2);
    }
    
}
