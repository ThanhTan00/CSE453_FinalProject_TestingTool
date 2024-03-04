/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author tanle
 */
public class CommissionTestcases {
    int totalLock;
    int totalStock;
    int totalBarrel;
    
    Lock lock;
    Stock stock;
    Barrel barrel;
    
    double sale;
    double expectedCommission;

    public CommissionTestcases(int totalLock, int totalStock, int totalBarrel, Lock lock, Stock stock, Barrel barrel) {
        this.totalLock = totalLock;
        this.totalStock = totalStock;
        this.totalBarrel = totalBarrel;
        this.lock = lock;
        this.stock = stock;
        this.barrel = barrel;
    }
    
    public void calSale() {
        sale = (totalLock * lock.getCost()) + (totalStock * stock.getCost()) + (totalBarrel * barrel.getCost());
    }
    
    public double calCommission() {
        boolean c1, c2, c3;
        c1 = (lock.getMin() <= totalLock) && (totalLock <= lock.getMax());
        c2 = (stock.getMin() <= totalStock) && (totalStock <= stock.getMax());
        c3 = (barrel.getMin() <= totalBarrel) && (totalBarrel <= barrel.getMax());
        
        if (!c1 || !c2 || !c3) {
            expectedCommission = 0;
        } else {
            calSale();
            if (sale > 1800) {
                expectedCommission = 0.1*1000 + 0.15*800 + (sale-1800)*0.2;
            } else if (sale > 1000) {
                expectedCommission = 0.1*1000 + (sale -1000)*0.15;
            } else {
                expectedCommission = 0.1*sale;
            }
        }
        
        return expectedCommission;
    }
    
    public int getTotalLock() {
        return totalLock;
    }

    public void setTotalLock(int totalLock) {
        this.totalLock = totalLock;
    }

    public int getTotalStock() {
        return totalStock;
    }

    public void setTotalStock(int totalStock) {
        this.totalStock = totalStock;
    }

    public int getTotalBarrel() {
        return totalBarrel;
    }

    public void setTotalBarrel(int totalBarrel) {
        this.totalBarrel = totalBarrel;
    }

    public double getExpectedOutput() {
        return expectedCommission;
    }

    public void setExpectedOutput(double expectedCommission) {
        this.expectedCommission = expectedCommission;
    }
    
    
    
}
