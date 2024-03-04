/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author tanle
 */
public class Stock {
    private int min;
    private int max;
    private double cost = 35;

    public Stock(int min, int max) {
        this.min = min;
        this.max = max;
    }

    public void setMin(int min) {
        this.min = min;
    }

    public void setMax(int max) {
        this.max = max;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }

    public int getMin() {
        return min;
    }

    public int getMax() {
        return max;
    }

    public double getCost() {
        return cost;
    }
    
    
    
    
}
