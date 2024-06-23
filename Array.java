public class Array {
    public static void main(String[] args) {
        String[] cars = {"Volvo", "BMW", "Ford", "Mazda"};
        System.out.println(cars[0]); // => Volvo

        cars[0] = "Opel";
        System.out.println(cars[0]); // => Opel

        System.out.println(cars.length); // => 4

        // => Opel BMW Ford Mazda
        for (String i : cars) {
            System.out.println(i);
        }

        int[] nums = new int[5];
        System.out.println(nums[0]); // => 0
    }
}
