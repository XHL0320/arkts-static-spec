// Swift 实现 — D-16.5.3: AsyncRWLock
//
// ArkTS 问题: Spec §16.5.3 定义 AsyncRWLock，但 stdlib 未提供
// Swift 等价: actor 提供内置读写隔离
//
// Swift actor 保证在同一时间只有一个任务可以访问其可变状态，
// 隐式提供了读-写互斥语义，多个读操作串行化但不会同时写。

actor SharedData {
    var value: Int = 0

    // 读操作（actor 自动串行化）
    func read() -> Int {
        return value
    }

    // 写操作（独占）
    func write(_ v: Int) {
        value = v
    }
}

func rwLockDemo() async {
    let data = SharedData()

    // 写入
    await data.write(42)

    // 读取
    let v = await data.read()
    assert(v == 42)
    print("D-16.5.3 AsyncRWLock OK: \(v)")
}

@main
struct Main {
    static func main() async {
        await rwLockDemo()
    }
}
