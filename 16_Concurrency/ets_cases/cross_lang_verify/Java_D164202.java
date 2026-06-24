/**
 * Java 实现 — D-16.4.2-02: launch { } 无括号块形式
 *
 * ArkTS 问题: Spec §16.4.2 允许 `launch { console.log("hello!") }` 块形式，
 *             但 es2panda 不支持（需要括号）
 * Java 等价: 无直接等价。Java 没有块形式的异步执行语法，
 *            使用 ExecutorService 或 Thread 模拟。
 */
import java.util.concurrent.*;

public class Java_D164202 {
    // ArkTS spec: launch { console.log("hello!") }      ← 应编译通过
    // Java:       Executors.newSingleThreadExecutor() + submit

    static void h() {
        ExecutorService executor = Executors.newSingleThreadExecutor();
        executor.submit(() -> {
            System.out.println("hello!");
        });
        executor.shutdown();
    }

    public static void main(String[] args) {
        h();
        System.out.println("D-16.4.2-02 OK");
    }
}
