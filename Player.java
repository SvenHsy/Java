package enums;

public class Player {
    private String name;
    private int x, y;

    public Player(String name) {
        this.name = name;
        x = 0;
        y = 0;
    }

    /**
     * ある方向への移動
     * @param direction 目標方向。Direction 列挙型の値である
     */
    public void move(Direction direction) {
        if (direction == Direction.STAY) {
            System.out.println(name + " stays still.");
        } else {
            System.out.println(name + " is moving " + direction + ".");
            x += direction.getDeltaX();
            y += direction.getDeltaY();
        }
    }

    /**
     * 現在の状態の出力
     */
    public void printInfo() {
        System.out.println(name + " is now at (" + x + ", " + y + ").");
    }
}
