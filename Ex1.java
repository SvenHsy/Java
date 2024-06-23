public class Ex1 {
    public static void main(String[] args) {
        int month = 7;

        switch (month) {
            case 3, 4, 5: // この構文は、Java の 14 以降のバージョンでのみ使用可能
                System.out.println("Spring");
                break;
            case 6, 7, 8:
                System.out.println("Summer");
                break;
            case 9, 10, 11:
                System.out.println("Autumn");
                break;
            case 12, 1, 2:
                System.out.println("Winter");
                break;
        }
    }
}
