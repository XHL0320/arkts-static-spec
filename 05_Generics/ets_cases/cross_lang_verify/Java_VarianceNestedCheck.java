/**
 * Java 实现 — 变体检查粒度对比
 *
 * ArkTS Issue GEN-U-01:
 * ArkTS 编译器对 out/in 变体检查不递归进入回调函数类型内部。
 * Java 使用使用点变体（use-site variance），无此问题。
 *
 * 对比要点：
 * - Java 没有声明点变体（out/in），变体标注在使用点（? extends / ? super）
 * - 回调参数处的变体由调用方决定，不在类声明处检查
 * - 因此 Java 编译器不存在"嵌套回调变体检查"失败的问题
 */

import java.util.function.Consumer;
import java.util.function.Supplier;

// Java 等效场景：使用使用点变体
// 没有 out/in 声明点标注，变体由使用者决定
class Box<T> {
    private T value;

    public Box(T value) {
        this.value = value;
    }

    public T get() {
        return value;
    }

    // 等效 ArkTS: forEach(cb: (item: T) => void): void
    // 使用 Consumer 并让调用方决定变体
    public void forEach(Consumer<? super T> cb) {
        cb.accept(value);
    }

    // 等效 ArkTS: map(cb: () => T): void
    public void map(Supplier<? extends T> cb) {
        T result = cb.get();
    }
}

public class Java_VarianceNestedCheck {
    public static void main(String[] args) {
        // 使用点变体：调用方自行处理
        Box<Number> box = new Box<>(42);

        // 协变使用（Consumer<? super Number> 可接受 Number 及其父类）
        box.forEach((Number n) -> System.out.println(n));

        // 逆变使用（Supplier<? extends Number> 可返回 Number 及其子类）
        box.map(() -> 3.14);

        System.out.println("Java 无声明点变体，变体检查在使用点由调用方负责。");
    }
}
