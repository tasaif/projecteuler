import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.math.BigInteger;

public class NumberReaper {
  File fhandle;
  FileInputStream fstream;
  BufferedReader freader;
  
  public void close(){
    try {
      freader.close();
    } catch (IOException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    } finally {
      try {
        fstream.close();
      } catch (IOException e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
      }
    }
  }
  
  public NumberReaper(String fname){
    try {
      fhandle = new File(fname);
      fstream = new FileInputStream(fhandle);
      freader = new BufferedReader(new InputStreamReader(fstream));
    } catch (FileNotFoundException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
      System.out.println(String.format("Failed to open file: %s", fname));
      this.close();
    }
  }
  
  public BigInteger next(){
    String retval = null;
    try {
      retval = freader.readLine();
    } catch (IOException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
      System.out.println("Failed to read file");
      this.close();
    }
    if (retval == null) return null;
    return new BigInteger(retval);
  }
}
