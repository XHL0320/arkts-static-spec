/**
 * Java 实现 — D-16.5.3: AsyncRWLock
 *
 * ArkTS 问题: Spec §16.5.3 定义 AsyncRWLock，但 stdlib 未提供
 * Java 等价: java.util.concurrent.locks.ReentrantReadWriteLock
 *
 * ReentrantReadWriteLock 支持多读并发 + 写独占，
 * 与 ArkTS AsyncRWLock 的语义一一对应。
 */
import java.util.concurrent.locks.*;

public class Java_D1653 {
    static final ReentrantReadWriteLock rw = new ReentrantReadWriteLock();
    static int sharedData = 0;

    // 读操作：多线程可以并发读
    static int readData() {
        rw.readLock().lock();
        try {
            return sharedData;
        } finally {
            rw.readLock().unlock();
        }
    }

    // 写操作：写时禁止其他读写
    static void writeData(int v) {
        rw.writeLock().lock();
        try {
            sharedData = v;
        } finally {
            rw.writeLock().unlock();
        }
    }

    public static void main(String[] args) throws Exception {
        // 写线程
        Thread writer = new Thread(() -> writeData(42));
        writer.start();
        writer.join();

        // 读线程
        Thread reader = new Thread(() -> {
            int v = readData();
            assert v == 42;
        });
        reader.start();
        reader.join();

        System.out.println("D-16.5.3 AsyncRWLock OK: " + sharedData);
    }
}
