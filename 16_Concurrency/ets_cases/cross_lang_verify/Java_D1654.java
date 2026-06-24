/**
 * Java 实现 — D-16.5.4: AsyncCondVar
 *
 * ArkTS 问题: Spec §16.5.4 定义 AsyncCondVar，但 stdlib 未提供
 * Java 等价: java.util.concurrent.locks.Condition
 *
 * Condition + ReentrantLock 实现等待/通知模式：
 *   - cv.wait(m)  → condition.await()
 *   - cv.notifyOne(m) → condition.signal()
 */
import java.util.concurrent.locks.*;
import java.util.concurrent.*;

public class Java_D1654 {
    static final ReentrantLock lock = new ReentrantLock();
    static final Condition cond = lock.newCondition();
    static boolean flag = false;

    // 等待线程：等价 ArkTS g() — await cv.wait(m)
    static void waiter() {
        lock.lock();
        try {
            while (!flag) {
                cond.await();           // 释放锁，等待通知
            }
            System.out.println("waiter: notified");
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        } finally {
            lock.unlock();
        }
    }

    // 通知线程：等价 ArkTS f() — cv.notifyOne(m)
    static void notifier() {
        lock.lock();
        try {
            flag = true;
            cond.signal();              // 通知等待线程
            System.out.println("notifier: signal");
        } finally {
            lock.unlock();
        }
    }

    public static void main(String[] args) throws Exception {
        Thread w = new Thread(Java_D1654::waiter);
        Thread n = new Thread(Java_D1654::notifier);
        w.start();
        Thread.sleep(100);              // 确保 waiter 先执行
        n.start();
        w.join();
        n.join();
        System.out.println("D-16.5.4 AsyncCondVar OK");
    }
}
