// Swift 实现 — D-16.5.4: AsyncCondVar
//
// ArkTS 问题: Spec §16.5.4 定义 AsyncCondVar，但 stdlib 未提供
// Swift 等价: NSCondition
//
// NSCondition 实现等待/通知模式：
//   - cv.wait(m)  → condition.wait()
//   - cv.notifyOne(m) → condition.signal()
// 与 ArkTS AsyncCondVar 语义一致。

import Foundation

class Flag {
    var value: Bool = false
}

func condVarDemo() {
    let condition = NSCondition()
    let flag = Flag()

    // 等待线程：等价 ArkTS g() — await cv.wait(m)
    Thread {
        condition.lock()
        while !flag.value {
            condition.wait()              // 释放锁，等待通知
        }
        print("waiter: notified")
        condition.unlock()
    }.start()

    // 通知线程：等价 ArkTS f() — cv.notifyOne(m)
    Thread {
        condition.lock()
        flag.value = true
        condition.signal()                // 通知等待线程
        print("notifier: signal")
        condition.unlock()
    }.start()

    Thread.sleep(forTimeInterval: 0.5)
    print("D-16.5.4 AsyncCondVar OK")
}

@main
struct Main {
    static func main() async {
        condVarDemo()
    }
}
