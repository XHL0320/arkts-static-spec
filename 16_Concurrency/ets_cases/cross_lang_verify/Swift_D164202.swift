// Swift 实现 — D-16.4.2-02: launch { } 无括号块形式
//
// ArkTS 问题: Spec §16.4.2 允许 `launch { console.log("hello!") }` 块形式，
//             但 es2panda 不支持（需要括号）
// Swift: 原生支持 Task { } 无括号块形式，与 Spec 描述完全一致
//
// ArkTS spec: launch { console.log("hello!") }          ← 应编译通过
// Swift:      Task { print("hello!") }                  ✅ 编译通过

func h() {
    Task {
        print("hello!")
    }
}

@main
struct Main {
    static func main() async {
        h()
        print("D-16.4.2-02 OK")
    }
}
