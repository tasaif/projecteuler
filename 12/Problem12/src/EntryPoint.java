public class EntryPoint {
  public static long number_of_factors(long n) {
    // Ignore the 1 case, it's a waste of an operation
    long retval = 2;
    long i = 2;
    long max = (long) Math.ceil(Math.sqrt(n));
    for(; i<max; i++){
      if (n%i == 0) retval += 2;
    }
    return retval;
  }

  public static void main(String[] argv) {
    long triangle_number = 0;
    long i = 1;
    long first_with_over = 500;
    long factor_count;
    while(true) {
      triangle_number += i;
      factor_count = number_of_factors(triangle_number);
      if (factor_count > first_with_over) break;
      i++;
    }
    System.out.println(String.format("%s: %s", triangle_number, factor_count));
  }
}
