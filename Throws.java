import java.io.File;
import java.io.IOException;

public class Throws {
    static void test() throws IOException, InterruptedException { // test メソッド は 2 種類の例外をスローする
        new File("?:*\"><|").createNewFile(); // この行は IOException が発生する
        Thread.sleep(100); // この行は InterruptedException が発生する
    }

    public static void main(String[] args) throws IOException { // IOException は更に外にスローする
        try {
            test();
        } catch (InterruptedException e) { //  InterruptedException は try-catch 文の中で解決される
            System.out.println("InterruptedException happened");
        }
    }
}
