/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fifa2067;

/**
 *
 * @author Fundatec
 */
public class Goleiro extends Jogador {
    public void agir(){
        
    }
    public void pegarBola(){
        System.out.println("Goleiro pega a bola");
    }
    public void passarBola(){
        if(isComAbola()){
            setComAbola(false);
            System.out.println("Goleiro passa a bola");
        }
    }
    public void tomarGol(){
        setComAbola(false);
        System.out.println("Goleiro toma gol");
    }
    public void fazerDefesa(){
        setComAbola(true);
        System.out.println("Goleiro defende");
    }
}
