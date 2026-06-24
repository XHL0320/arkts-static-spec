/**
 * Java 实现 — async/await 等价语义对比
 *
 * Java 没有语言级 async/await，使用 CompletableFuture 模拟。
 * ArkTS 编译期约束（async 不在静态初始化、返回类型必须 Promise 等）
 * 在 Java 中无直接等价物。
 */
public class Java_AsyncCompare {
    public static void main(String[] args) throws Exception {
        // 模拟 async 函数
        java.util.concurrent.CompletableFuture<Integer> future =
            java.util.concurrent.CompletableFuture.supplyAsync(() -> 42);

        // 模拟 await（阻塞当前线程，非挂起）
        int result = future.get();
        System.out.println("Result: " + result);
        assert result == 42;
    }
}
