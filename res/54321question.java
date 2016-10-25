import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class Main {
	
	static List<Double> numbers = new ArrayList<Double>();
	static Set<Double> solutions = new HashSet<Double>();
	
    public static void main(String[] args) {	
    	// Add numbers in list of numbers
    	numbers.add(5D);
    	numbers.add(4D);
    	numbers.add(3D);
    	numbers.add(2D);
    	numbers.add(1D);
    	
    	// Recursively compute for solution
    	compute(numbers);
    	
    	// Print out solution
    	for (double d : solutions){
    		if (d <= 40.00000001 && d >= -0.00000001){
    			if (Math.abs((double)((int)(d)) - d) < 0.0000000000000001){
    				System.out.println("Possible solution: " + (int)(d + 0.0000001));
    			}
    		}
    	}
    }
    
    public static void compute(List<Double> input){
    	// Finish case for recursion
    	if (input.size() == 1){
    		solutions.add(input.get(0));
    		return;
    	}
    	
    	// Recursion recurse area
    	for (int pos = 0; pos < input.size() - 1; pos++){
    		// Locate two numbers that will supposed to be calculated
    		double n1 = input.get(pos);
    		double n2 = input.get(pos+1);
    		// op: 1, 2, 3, 4 means +, -, *, /
    		for (int op = 0; op < 4; op ++){
    			if (op == 0){
    				/* Basically...
    					1. Numbers selected:
    					5 4 3 2 1
    			        ^ ^
    			        2. Oprerator selected:
    			         +
    			        3. Result could be:
    			        5+4 3 2 1
    			        4. Turns into:
    			        9   3 2 1
    				 */
    	    		double nn = n1 + n2;
    	    		List<Double> newlist = new ArrayList<Double>(input);
    	    		newlist.remove(pos);
    	    		newlist.remove(pos);
    	    		newlist.add(pos, nn);
    	    		compute(newlist);
    			} else if (op == 1){
    	    		double nn = n1 - n2;
    	    		List<Double> newlist = new ArrayList<Double>(input);
    	    		newlist.remove(pos);
    	    		newlist.remove(pos);
    	    		newlist.add(pos, nn);
    	    		compute(newlist);
    			} else if (op == 2){
    	    		double nn = n1 * n2;
    	    		List<Double> newlist = new ArrayList<Double>(input);
    	    		newlist.remove(pos);
    	    		newlist.remove(pos);
    	    		newlist.add(pos, nn);
    	    		compute(newlist);
    			} else if (op == 3){
    	    		double nn = n1 / n2;
    	    		List<Double> newlist = new ArrayList<Double>(input);
    	    		newlist.remove(pos);
    	    		newlist.remove(pos);
    	    		newlist.add(pos, nn);
    	    		compute(newlist);
    			}
    		}	
    	}
    }

}
