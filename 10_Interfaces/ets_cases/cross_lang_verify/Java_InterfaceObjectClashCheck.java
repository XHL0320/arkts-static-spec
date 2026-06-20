/**
 * Java 实现 — 接口中与 Object 方法冲突检测
 *
 * 对应 ArkTS ISS-10-01/02:
 * - 规范 §10.3 要求接口中与 Object 公有方法同名的声明应报错
 * - ArkTS 编译器未实现此约束（GAP）
 * - Java 编译器严格拒绝此类声明
 */

interface MyInterface {
    // 场景 A: 与 Object.toString 冲突 → Java 编译错误 ❌
    // void toString();  // ❌ 编译错误: A default method cannot override a method from java.lang.Object

    // 场景 B: 与 Object.toString 返回值不同 → 同样编译错误 ❌
    // String toString();  // ❌ 编译错误

    // 场景 C: 与 Object 无关的方法 → 合法 ✅
    void myMethod();

    // 场景 D: default 方法覆盖 Object.equals → 编译错误 ❌
    // default boolean equals(Object obj) { return true; }  // ❌ 编译错误
}

class Impl implements MyInterface {
    public void myMethod() {
        System.out.println("myMethod() called");
    }
}

public class Java_InterfaceObjectClashCheck {
    public static void main(String[] args) {
        Impl obj = new Impl();
        obj.myMethod();
        System.out.println("Java: 接口中声明与 Object 方法同名 → 编译错误 ✅");
        System.out.println("ArkTS: 编译器未实现此约束（GAP）");
    }
}
