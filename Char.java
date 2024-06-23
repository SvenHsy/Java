public class Char {
    public static void main(String[] args) {
        char a = 'A';
        char b = (char) (a + 1);
        char c = (char) (a + 2);
        System.out.println(a); // => A
        System.out.println(b); // => B
        System.out.println(c); // => C
        System.out.println((char) (b - 'A' + 'a')); // => b
    }
}
