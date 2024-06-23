public class MultiArray {
    public static void main(String[] args) {
        int[][] array2D = {{1, 2, 3, 4}, {5, 6, 7}};

        System.out.println(array2D[1][1]); // => 6
        array2D[1][1] = 0;
        System.out.println(array2D[1][1]); // => 0
        System.out.println(array2D[0][1]); // => 2
    }
}
