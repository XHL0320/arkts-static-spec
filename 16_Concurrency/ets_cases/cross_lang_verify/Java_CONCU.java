/**
 * Java 实现 — CONC-U: launch + async lambda + await
 *
 * ArkTS 问题: launch<T>(async () => { await g(); return val; })
 *             编译器 CRASH（es2panda 段错误）
 * Java 等价: CompletableFuture.supplyAsync(() -> { return val; })
 *
 * ArkTS spec 期望 launch<Int>(async () => { await g(); return 42; }) 编译通过，
 * Java 中无语言级 async/await，使用 CompletableFuture 链式调用。
 */
import java.util.concurrent.*;

public class Java_CONCU {
    // ArkTS: async function g(): Promise<void> {}
    static CompletableFuture<Void> g() {
        return CompletableFuture.completedFuture(null);
    }

    // ArkTS: let p1: Promise<Int> = launch<Int>(async () => { await g(); return 42; })
    static CompletableFuture<Integer> f() {
        return CompletableFuture.supplyAsync(() -> {
            try {
                g().get();          // 阻塞等待（非挂起）
            } catch (Exception e) {
                throw new CompletionException(e);
            }
            return 42;
        });
    }

    public static void main(String[] args) throws Exception {
        CompletableFuture<Integer> p1 = f();
        int result1 = p1.get();     // await 等价
        assert result1 == 42;
        System.out.println("CONC-U OK: " + result1);
    }
}
