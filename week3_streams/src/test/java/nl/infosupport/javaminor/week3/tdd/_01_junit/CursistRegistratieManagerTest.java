package nl.infosupport.javaminor.week3.tdd._01_junit;

import org.junit.Test;

public class CursistRegistratieManagerTest {

  @Test
  public void test() throws OngeldigeCursistActivatieException {
    new CursistRegistratieManager().activeer("test", "test");
  }
}
