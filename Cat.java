package animals;

public class Cat extends Animal {
    public Cat(String name_) {
        super(name_);
    }

    @Override
    public void eat(String food) {
        System.out.print(name + " ate " + food + ", ");
        meow();
    }

    public void meow() {
        System.out.println("meow~");
    }
}
