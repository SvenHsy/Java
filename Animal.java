package animals;

public abstract class Animal {
    protected String name;

    public Animal(String name_) {
        this.name = name_;
    }

    public String getName() {
        return name;
    }

    private void setName(String name_) {
        name = name_;
    }

    public abstract void eat(String food);
}
