package nl.infosupport.javaminor.blok1.week3.streams._01ajava8streams.part01_06;

public class Apple {
	
	private String colour;
	private int weight;
	
	public Apple(String colour, int weight) {
		super();
		this.colour = colour;
		this.weight = weight;
	}
	public String getColour() {
		return colour;
	}
	public void setColour(String colour) {
		this.colour = colour;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	@Override
	public String toString() {
		return "Apple [colour=" + colour + ", weight=" + weight + "]";
	}
	
	

}
