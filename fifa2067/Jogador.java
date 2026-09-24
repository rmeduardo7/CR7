/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fifa2067;

/**
 *
 * @author Fundatec
 */
public abstract class Jogador {
    private String nome;
    private int numeroCamisa;
    private boolean comAbola;
    
    public abstract void agir();

    /**
     * @return the nome
     */
    public String getNome() {
        return nome;
    }

    /**
     * @param nome the nome to set
     */
    public void setNome(String nome) {
        this.nome = nome;
    }

    /**
     * @return the numeroCamisa
     */
    public int getNumeroCamisa() {
        return numeroCamisa;
    }

    /**
     * @param numeroCamisa the numeroCamisa to set
     */
    public void setNumeroCamisa(int numeroCamisa) {
        this.numeroCamisa = numeroCamisa;
    }

    /**
     * @return the comAbola
     */
    public boolean isComAbola() {
        return comAbola;
    }

    /**
     * @param comAbola the comAbola to set
     */
    public void setComAbola(boolean comAbola) {
        this.comAbola = comAbola;
    }
}
