import java.io.File;
import java.io.IOException;

public class MultiCatch {
    public static void main(String[] args) {
        int[] arr = new int[10];
        File file = new File("");

        try {
            System.out.println(10 / 0);
            System.out.println(arr[10]);
            file.createNewFile(); // この行は IOException が発生する可能性がある
        } catch (ArithmeticException | ArrayIndexOutOfBoundsException e) {
            System.out.println("Some exception about numbers occurred!");
        } catch (IOException e) {
            System.out.println("Some exception about files occurred!");
        }

        System.out.println("The try block is over.");
    }
}
