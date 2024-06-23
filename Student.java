public class Student {
    static int studentNum = 0;
    int studentID;
    String name;

    Student(String name_) {
        name = name_;
        studentID = studentNum++; // 「studentID = maxStudentID; maxStudentID++;」に相当する
    }

    public static void main(String[] args) {
        Student studentA = new Student("Alice");
        Student studentB = new Student("Bob");

        System.out.println(Student.studentNum); // 静的変数の使用
        System.out.println(studentNum); // 静的変数の直接使用（クラス内のみ）
        System.out.println(studentA.studentNum); // オブジェクト名での使用（非推奨）
    }
}
