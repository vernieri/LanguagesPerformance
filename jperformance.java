package javoso;

import java.util.Random;

/**
 *
 * @author Joao TI
 */
public class Javoso {

    /**
     * @param args the command line arguments
     */
    static int[] anArray = new int[99999];
    
    public static void main(String[] args) {
        long startTime = System.currentTimeMillis();
        //code
        gerar();
        calc();
        long stopTime = System.currentTimeMillis();
        System.out.println("Time in miliseconds: " + (stopTime - startTime));
    }
    
    public static void gerar(){
        int i;
        Random rand = new Random();
        
        System.out.println("Lets Generate some numbers: ");
        for(i=0;i<99999;i++){
            anArray[i] = rand.nextInt(99999);
            
        }
        for(i=0;i<99999;i++){
            System.out.println("Random Number: " + anArray[i]);
            
        }
    }
    
    public static void calc(){
        int i,n,p,e,prime;
        
        prime = 0;
        for(i=0;i<99999;i++){
            p = 2;
            n = anArray[i];
            e = 0;
            do{
                if((n % p) != 0)
                    e++;
                p++;
            }while(p<n);
            
            if(e+2 == n)
                prime++;
            
        }
        
        System.out.println("Here number of prime numbers found: "+prime);
    
    
    }
    
    
    
}
