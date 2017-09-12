package exercises.part02_01;

import java.util.Arrays;
import java.util.List;

import static java.util.stream.Collectors.toList;

import org.junit.Test;

public class WorkingWithStreamsOfNumbers {

	@Test
	public void generateTheSquaresOfAListOfNumbers() {
		List<Integer> numbersToBeSquared=Arrays.asList(1,2,3,4);
		List<Integer> squares = null;
		
		// TODO Create a stream of squares by implementing an appropriate map function
		squares.forEach(i -> System.out.println(i));
	}
	
	@Test
	public void generatePairesOfNumbersByCombining2Lists() {
		List<Integer> numbersToPair1=Arrays.asList(1,2,3,4);
		List<Integer> numbersToPair2=Arrays.asList(5,6,7,8);
		//TODO Look at the output of the numbersFirstStep list.
		List<Integer> numbersFirstStep = numbersToPair1.stream()
						// combine each number of this stream with that of the second one
						// for each number of the first list the second stream is opened
					  .flatMap(f -> numbersToPair2.stream())
					  .collect(toList());
		
		numbersFirstStep.forEach(System.out::println);
		
		 
		List<Object> pairs = numbersToPair1.stream()
				
			  .flatMap(f -> 
				     numbersToPair2.stream().map(g -> {
					  // inside this block you can 
				    	  // refer to f and g to create a new int array
					  return null;
				  })
				  
				  )
			  
			  .collect(toList());
		
		pairs.forEach(o->{
			int[] pair=(int[])o;
			System.out.println(pair[0] + " " + pair[1]);
		});

	}	
	
}