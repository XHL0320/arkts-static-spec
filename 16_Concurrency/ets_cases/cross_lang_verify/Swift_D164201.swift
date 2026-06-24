// Swift 实现 — D-16.4.2-01: launch async { } 推断形式
//
// ArkTS 问题: Spec §16.4.2 允许 `launch async { await g() }` 推断形式，
//             但 es2panda 不支持（需要显式类型参数+括号）
// Swift: 原生支持 Task { await g() } 推断形式，与 Spec 描述完全一致
//
// ArkTS spec: let p2 = launch async { await g() }      ← 应编译通过
// Swift:      let p2 = Task { await g() }               ✅ 编译通过

func g() async -> Void {}

// ArkTS: let p2 = launch async { await g() }
// Swift: let p2 = Task { await g() }
func f() async -> Int {
    let p2 = Task {
        await g()
        return 42
    }
    return await p2.value
}

@main
struct Main {
    static func main() async {
        let result = await f()
        assert(result == 42)
        print("D-16.4.2-01 OK: \(result)")
    }
}
