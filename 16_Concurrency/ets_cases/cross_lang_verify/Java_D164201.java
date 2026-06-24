/**
 * Java 实现 — D-16.4.2-01: launch async { } 推断形式
 *
 * ArkTS 问题: Spec §16.4.2 允许 `launch async { await g() }` 推断形式，
 *             但 es2panda 不支持（需要显式类型参数+括号）
 * Java 等价: 无直接等价。Java 无语言级 launch/async 语法，
 *            使用 CompletableFuture.supplyAsync()。
 *
 * Java 没有类似 `launch async { }` 的推断语法，所有异步操作
 * 需要通过 CompletableFuture 或 ExecutorService 显式创建。
 */
import java.util.concurrent.*;

public class Java_D164201 {
    static CompletableFuture<Void> g() {
        return CompletableFuture.completedFuture(null);
    }

    // Java 中必须显式编写类型和括号，类似于 ArkTS 当前实现
    static CompletableFuture<Integer> f() {
        CompletableFuture<Integer> p2 = CompletableFuture.supplyAsync(() -> {
            try {
                g().get();
            } catch (Exception e) {
                throw new CompletionException(e);
            }
            return 42;
        });
        return p2;
    }

    public static void main(String[] args) throws Exception {
        int result = f().get();
        assert result == 42;
        System.out.println("D-16.4.2-01 OK: " + result);
    }
}
