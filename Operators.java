public class Operators {
    public static void main(String[] args) {
        int x, y;

        int sum1 = 100 + 50;
        System.out.println(sum1); // => 150
        int sum2 = sum1 + 250;
        System.out.println(sum2); // => 400

        x = 5;
        y = 2;
        System.out.println(x * y); // => 10
        System.out.println(x / y); // => 2
        System.out.println(x % y); // => 1

        x++;
        System.out.println(x); // => 6
        x--;
        System.out.println(x); // => 5
        x += 5;
        System.out.println(x); // => 10
        x %= 3;
        System.out.println(x); // => 1

        System.out.println(x == y); // => false
        System.out.println(x != y); // => true

        System.out.println(x > 3 && x < 10); // => false
        System.out.println(!(x > 3 || x < 0)); // => true

    }
}
