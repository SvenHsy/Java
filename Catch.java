public class Catch {
    public static void main(String[] args) {
        int[] arr = new int[10];
//        System.out.println(arr[10]); // => ArrayIndexOutOfBoundsException

        try {
            System.out.println(arr[10]);
            System.out.println("Hello"); // => この行は永遠に実行されない
            System.out.println(10 / 0); // => この行は ArithmeticException を生成するが、実行されない
        } catch (ArithmeticException e) {
            System.out.println("Divided by 0!");
        } catch (ArrayIndexOutOfBoundsException e) {
            System.out.println("Index out of bound!");
        } catch (Exception e) {
            System.out.println("Unkown exception!");
            e.printStackTrace(); // 例外の詳細を出力
        }

        System.out.println("The try block is over.");
    }
}
