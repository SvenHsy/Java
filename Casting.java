public class Casting {
    public static void main(String[] args) {
        int myInt = 9;
        double myDouble = myInt; // 自動型キャスト

        System.out.println(myInt);      // => 9
        System.out.println(myDouble);   // => 9.0

        myDouble = 9.78;
        myInt = (int) myDouble; // 手動型キャスト

        System.out.println(myDouble);   // => 9.78
        System.out.println(myInt);      // => 9（精度を失う）
    }
}
