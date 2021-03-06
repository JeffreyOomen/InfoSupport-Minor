package nl.infosupport.javaminor.blok1.week3.kata._1;

import static org.hamcrest.core.Is.is;
import static org.junit.Assert.assertThat;

import org.junit.Before;
import org.junit.Test;

public class StringCalculatorTest {

  private StringCalculator stringCalculator;

  @Before
  public void setup() {
    stringCalculator = new StringCalculator();
  }

  @Test
  public void addEmptyStringShouldGive0() {
    assertThat(stringCalculator.add(""), is(0));
  }

  @Test
  public void addString0ShouldGive0() {
    assertThat(stringCalculator.add("0"), is(0));
  }

  @Test
  public void addString1ShouldGive1() {
    assertThat(stringCalculator.add("1"), is(1));
  }

  @Test
  public void addString12ShouldGive3() {
    assertThat(stringCalculator.add("1,2"), is(3));
  }

  @Test
  public void addString1230ShouldGive3() {
    assertThat(stringCalculator.add("1,2,3,0"), is(6));
  }

  @Test
  public void addString123WithLineFeedShouldGive3() {
    assertThat(stringCalculator.add("1,2\n3"), is(6));
  }

  @Test(expected = IllegalArgumentException.class)
  public void addString123WithLineFeedShouldGive() {
    stringCalculator.add("1,2,\n3");
  }

  @Test(expected = IllegalArgumentException.class)
  public void addStringWithNegativeValueShouldGiveException() {
    stringCalculator.add("-1"); // negatives not allowed
  }

  @Test
  public void addString123WithCustomDelimiterShouldGive6() {
    assertThat(stringCalculator.add("//;\n1;2;3"), is(6));
  }

  @Test
  public void addString123WithOtherCustomDelimiterShouldGive6() {
    assertThat(stringCalculator.add("//-\n1-2-3"), is(6));
  }

}
