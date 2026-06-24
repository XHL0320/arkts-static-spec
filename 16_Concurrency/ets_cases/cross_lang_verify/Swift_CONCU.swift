// Swift 实现 — CONC-U: launch + async lambda + await
//
// ArkTS 问题: launch<T>(async () => { await g(); return val; })
//             编译器 CRASH（es2panda 段错误）
// Swift: 原生支持 Task { await g(); return val }
//
// ArkTS spec 期望 launch<Int>(async () => { await g(); return 42; }) 编译通过，
// Swift Task { } 与 spec 描述的 launch async { } 语义完全一致。

func g() async -> Void {
    return
}

// ArkTS: let p1: Promise<Int> = launch<Int>(async () => { await g(); return 42; })
// Swift: let p1 = Task { () -> Int in await g(); return 42 }
func f() async -> Int {
    let p1 = Task { () -> Int in
        await g()
        return 42
    }
    let result1 = await p1.value
    return result1
}

@main
struct Main {
    static func main() async {
        let result1 = await f()
        assert(result1 == 42)
        print("CONC-U OK: \(result1)")
    }
}
