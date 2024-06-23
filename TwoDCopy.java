public class TwoDCopy {
    public static void main(String[] args) {
        int[][] a = { { 1, 2 }, { 3, 4 } };
        // aのシャローコピーを行っている。
        // この時点では、中の１次元配列をコピーしている。
        int[][] b = a.clone();

        a[0][0] = 5;
        System.out.println(b[0][0]); // => 5

        // ディープコピー
        for (int i = 0; i < a.length; i++) {
            a[i] = b[i].clone();
        }
        a[0][1] = 6;
        System.out.println(b[0][0]); // => 2

        // 2重for文によるdeepコピー
        int[][] c = { { 1, 2 }, { 3, 4 } };
        // コピー先であるint型の2次元配列dを宣言し、上位配列のみを生成します。
        int[][] d = new int[c.length][];

        // forループ内でdの下位配列の生成を行う。
        /*
         * cの上位配列のサイズ分forループし、
         * 該当するcの下位配列のサイズを引数にdの下位配列を生成します。
         */
        for (int i = 0; i < c.length; i++) {
            d[i] = new int[c[i].length];

            // forループ内でcからdへデータのコピーを行う。
            /*
             * cの各下位配列のサイズ分forループします。ループ内で
             * コピー元2次元配列の各要素をコピー先の2次元配列の各要素へコピーしています。
             */
            for (int j = 0; j < c[i].length; j++) {
                d[i][j] = c[i][j];
            }
        }

        // 正しくコピーされたかの確認
        for (int i = 0; i < d.length; i++) { // (5)
            for (int j = 0; j < d[i].length; j++) {
                System.out.print(d[i][j] + " ");
            }
            System.out.println();
        }
        //deepコピーであることの確認
        d[0][0] = 18;
        c[0][0] = 33;

        System.out.println(d[0][0]);
        System.out.println(c[0][0]);
    }
}
