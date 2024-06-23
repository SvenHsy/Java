public class Finally {
    static void test2() {
        int[] arr = new int[10];

        try {
            System.out.println("In try block!");
            arr[10] = 0;
        } catch (Exception e) {
            System.out.println("In catch block!");
            return;
        } finally {
            System.out.println("In finally block!");
        }
    }

    public static void test1() {
        int[] arr = new int[10];

        try {
            System.out.println("In try block!");
            arr[10] = 0;
        } catch (Exception e) {
            System.out.println("In catch block!");
            return;
        }

        System.out.println("After try block.");
    }

    public static void main(String[] args) {
        System.out.println("Call test1:");
        test1();
        System.out.println();
        System.out.println("Call test2:");
        test2();
    }
}
