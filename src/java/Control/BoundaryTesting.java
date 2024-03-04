/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Control;

import Model.Barrel;
import Model.CommissionTestcases;
import Model.Lock;
import Model.Stock;
import Model.TriangleClassify;
import java.util.ArrayList;

/**
 *
 * @author tanle
 */
public class BoundaryTesting {

    public BoundaryTesting() {
    }
    
    public ArrayList<TriangleClassify> generateTestCasesForTriangleProblem (int min, int max){
        ArrayList<TriangleClassify> testCases = new ArrayList<>();
        int nom = (min+max)/2;
        int[] table = {min, min+1, max-1, max};
        
        testCases.add(new TriangleClassify(nom, nom, nom, min, max));
        
        for (int i=0; i<table.length; i++){
            TriangleClassify triangle = new TriangleClassify(table[i], nom, nom, min, max);
            testCases.add(triangle);
        }
        
        for (int i=0; i<table.length; i++){
            TriangleClassify triangle = new TriangleClassify(nom, table[i], nom, min, max);
            testCases.add(triangle);
        }
        
        for (int i=0; i<table.length; i++){
            TriangleClassify triangle = new TriangleClassify(nom, nom, table[i], min, max);
            testCases.add(triangle);
        }
        
        return testCases;
    };
    
    public ArrayList<CommissionTestcases> generateTestCasesForCommissionProblem(Lock lock, Stock stock, Barrel barrel) {
        ArrayList<CommissionTestcases> testCases = new ArrayList<CommissionTestcases>();
        
        int lockMin = lock.getMin();
        int lockMax = lock.getMax();
        int stockMin = stock.getMin();
        int stockMax = stock.getMax();
        int barrelMin = barrel.getMin();
        int barrelMax = barrel.getMax();
        
        int lockNom = (lockMin+lockMax)/2;
        int stockNom = (stockMin+stockMax)/2;
        int barrelNom = (barrelMin+barrelMax)/2;
        
        int[] lockTable = {lockMin, lockMin+1, lockMax-1, lockMax};
        int[] stockTable = {stockMin, stockMin+1, stockMax-1, stockMax};
        int[] barrelTable = {barrelMin, barrelMin+1, barrelMax-1, barrelMax};
        
        testCases.add(new CommissionTestcases(lockNom, stockNom, barrelNom, lock, stock, barrel));
        
        for (int i=0; i<lockTable.length; i++){
            CommissionTestcases c = new CommissionTestcases(lockTable[i], stockNom, barrelNom, lock, stock, barrel);
            testCases.add(c);
        }
        
        for (int i=0; i<stockTable.length; i++){
            CommissionTestcases c = new CommissionTestcases(lockNom, stockTable[i], barrelNom, lock, stock, barrel);
            testCases.add(c);
        }
        
        for (int i=0; i<barrelTable.length; i++){
            CommissionTestcases c = new CommissionTestcases(lockNom, stockNom, barrelTable[i], lock, stock, barrel);
            testCases.add(c);
        }
        
        return testCases;
    }
}
