import java.math.BigInteger;

public class EntryPoint {
  public static void main(String[] argv){
    NumberReaper nr = new NumberReaper("/home/tasaif/repos/projecteuler/13/input");
    BigInteger sum = new BigInteger("0");
    BigInteger next;
    for (next = nr.next(); next != null; next = nr.next())
      sum = sum.add(next);
    nr.close();
    System.out.println(sum.toString().substring(0, 10));
  }
}
