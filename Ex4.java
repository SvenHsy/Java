public class Ex4 {
    static boolean isPrime(int x) {
        if (x < 2) return false;
        for (int i = 2; i < x; i++) {
            if (x % i == 0) {
                return false; // メソッドは return の直後に終了することに注意してください
            }
        }
        return true;
    }

    public static void main(String[] args) {
        System.out.println(isPrime(5));
        System.out.println(isPrime(15));
    }
}
