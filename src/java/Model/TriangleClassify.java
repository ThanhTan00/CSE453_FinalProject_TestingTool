/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

public class TriangleClassify {
	private int side1;
	private int side2;
	private int side3;
        private int max;
        private int min;

    public TriangleClassify(int side1, int side2, int side3,int min, int max) {
        this.side1 = side1;
        this.side2 = side2;
        this.side3 = side3;
        this.min = min;
        this.max = max;
    }
	
        
	
        
	public void setSide(int s1, int s2, int s3)
	{
		this.side1=s1;
		this.side2=s2;
		this.side3=s3;
	}

	public int getSide1() {
		return side1;
	}

	public int getSide2() {
		return side2;
	}

	public int getSide3() {
		return side3;
	}
	public boolean isTriangle()
	{
		return (side1<side2+side3) && (side2<side1+side3) && (side3<side2+side1);
	}
	public boolean isValid() {
            if (side1 < 1 || side2 < 1 || side3 <1) {
                return false;
            } else {
		return (min <= side1) && (side1 <= max) && (min <= side2) && (side2 <= max) && (min <= side3) && (side3 <= max);
            }
	}
	public String classify()
	{
		String triangleType;
        if (!isValid())
        	triangleType = "OUT_OF_RANGE";
        else {
             if (isTriangle()) 
             {
                if ((side1 == side2) && (side2 == side3))
                   triangleType = "EQUILATERAL";
                else if ((side1 != side2) && (side1 != side3) && (side2 != side3))
                	triangleType = "SCALENE";
                else
                	triangleType = "ISOSCELES";
              }
              else
            	  triangleType = "IsNotTriangle";
             }
         return triangleType;
  }
}