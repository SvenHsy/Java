public class Ex2 {
    public static void main(String[] args) {
        int x = 5;
        boolean isPrime = true;

        // 2 より小さいものは素数であってはいけない
        if (x < 2) {
            isPrime = false;
        }

        // x が素数かどうか判定
        for (int i = 2; i < x; i++) {
            if (x % i == 0) { // i が x を割り切れる場合
                isPrime = false; // x は素数でない
                break; // 残りの i も判断する必要はない
            }
        }

        // 输出
        if (isPrime) {
            System.out.println(x + " is prime");
        } else {
            System.out.println(x + " is not prime");
        }
    }
}
