/**
 * Java 实现 — D-16.6.1: launch domain/group/ID 参数
 *
 * ArkTS 问题: Spec §16.6.1 要求 launch 支持 domain/group/ID 参数
 *             （指定目标 worker 线程集），但实现仅接受 lambda
 * Java 等价: ExecutorService + ThreadFactory 指定目标线程
 *
 * Java 可以通过 newSingleThreadExecutor 或 ThreadPoolExecutor
 * 精确控制任务运行的目标线程，类似于 ArkTS 的 domain/group 概念。
 */
import java.util.concurrent.*;

public class Java_D1661 {
    // 指定线程名称和 domain（如 main、exclusive）
    static ExecutorService createDomain(String name) {
        return Executors.newSingleThreadExecutor(r -> {
            Thread t = new Thread(r, "domain-" + name);
            return t;
        });
    }

    // 指定 worker thread ID 组（类似 ArkTS group）
    static ExecutorService createGroup(int... ids) {
        return Executors.newFixedThreadPool(ids.length, r -> {
            Thread t = new Thread(r);
            return t;
        });
    }

    public static void main(String[] args) throws Exception {
        // domain 示例：指定 main worker 执行
        ExecutorService mainWorker = createDomain("main");
        CompletableFuture<Integer> future = CompletableFuture.supplyAsync(() -> {
            return Thread.currentThread().getName();
        }, mainWorker).thenApply(name -> {
            assert name.equals("domain-main");
            return 42;
        });
        int result = future.get();
        assert result == 42;
        System.out.println("D-16.6.1 Domain OK: " + result);
        mainWorker.shutdown();
    }
}
