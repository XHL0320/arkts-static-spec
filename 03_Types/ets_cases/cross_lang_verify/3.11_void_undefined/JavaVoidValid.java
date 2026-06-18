// 3.11 Type void or undefined - Java 可编译行为验证
// Java 中 void 只能作为方法返回类型；不能作为变量类型或泛型参数

public class JavaVoidValid {
    static void f1() {
        return;
    }

    static void f2() {
        // no return is OK
    }

    static Runnable makeRunnable() {
        return () -> { return; };
    }

    public static void main(String[] args) {
        f1();
        f2();
        Runnable r = makeRunnable();
        r.run();
        System.out.println("Java void return only verified");
    }
}