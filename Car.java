public class Car {
    private class Driver {
        public String getCarBrand() {
            return brand;
        }
    }

    private Driver driver;
    private String brand;

    public Car(String brand) {
        driver = this.new Driver(); // this 可以省略
        this.brand = brand;
    }

    public Driver getDriver() {
        return driver;
    }

    public static void main(String[] args) {
        Car car = new Car("Ford");
        Car.Driver driver = car.new Driver();
        System.out.println(driver.getCarBrand()); // => Ford
    }
}
