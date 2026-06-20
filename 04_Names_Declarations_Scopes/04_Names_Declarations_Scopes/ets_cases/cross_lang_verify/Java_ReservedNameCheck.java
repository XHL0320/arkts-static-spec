/**
 * Java 实现 — 预定义类型名 / 保留名作为标识符的冲突检测
 *
 * 对应 ArkTS issue: Spec 未完整列举保留名（analysis_report.md）
 * ArkTS 中 `let int: number = 1;` 报 Semantic error（int 被保留），
 * 而 Spec 仅列出 number / String / Record / Object / Array 作为预定义类型冲突示例。
 *
 * 对比要点：
 * - Java 中 int/byte/char/double 是关键字，不能做标识符（编译错误）
 * - String / Object / Integer 是类名，不是关键字，可以做标识符（允许但 bad practice）
 * - ArkTS 的保留名规则更接近关键字系统，而非简单类名冲突
 */

public class Java_ReservedNameCheck {

    // 场景 A：关键字作为标识符 → 编译错误 ❌
    // 以下代码取消注释将产生编译错误：
    // int int = 1;     // ❌ 'int' 是关键字
    // double double = 1.0; // ❌ 'double' 是关键字
    // char char = 'a';   // ❌ 'char' 是关键字
    // byte byte = 1;    // ❌ 'byte' 是关键字

    // 场景 B：类名作为标识符 → 允许（类型被遮蔽）✅
    static class Box<T> {
        T value;
        Box(T v) { this.value = v; }
    }

    // 类名 String 可作为标识符（不是关键字）
    static void stringAsIdentifier() {
        String String = "hello";  // ✅ 允许，String 是类名不是关键字
        System.out.println("String as identifier: " + String);
    }

    // 类名 Object 可作为标识符
    static void objectAsIdentifier() {
        Object Object = new Object();  // ✅ 允许
        System.out.println("Object as identifier: " + Object);
    }

    public static void main(String[] args) {
        stringAsIdentifier();
        objectAsIdentifier();

        Box<Integer> box = new Box<>(42);
        System.out.println("Box<Integer> value: " + box.value);

        System.out.println("\n=== 对比结论 ===");
        System.out.println("Java 关键字（int/byte/char/double）→ 不可做标识符（与 ArkTS 一致）");
        System.out.println("Java 类名（String/Object/Integer）→ 可做标识符（与 ArkTS 不同）");
        System.out.println("ArkTS 对 int/number/String 等采用统一保留策略，比 Java 更严格");
    }
}
