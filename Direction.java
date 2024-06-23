package enums;

/**
 * Player が移動できる 9 個の方向の種類を格納する。
 */
public enum Direction {
    UP          (0, -1),    // 上
    LEFT_UP     (-1, -1),   // 左上
    LEFT        (-1, 0),    // 左
    LEFT_DOWN   (-1, 1),    // 左下
    DOWN        (0, 1),     // 下
    RIGHT_DOWN  (1, 1),     // 右下
    RIGHT       (1, 0),     // 右
    RIGHT_UP    (1, -1),    // 右上
    STAY        (0, 0);     // そのまま

    private int deltaX, deltaY; // その方向に移動した時の座標の変化量を格納する

    /**
     * 方向クラスのコンストラクタで、その方向に移動する際の x と y 座標の変化量を決定する。
     * @param deltaX x 座標の変化量
     * @param deltaY y 座標の変化量
     */
    Direction(int deltaX, int deltaY) {
        this.deltaX = deltaX;
        this.deltaY = deltaY;
    }

    public int getDeltaX() {
        return deltaX;
    }

    public int getDeltaY() {
        return deltaY;
    }
}
