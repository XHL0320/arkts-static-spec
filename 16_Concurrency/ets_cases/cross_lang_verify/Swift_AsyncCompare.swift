// Swift 实现 — async/await 语义对比
//
// Swift 有语言级 async/await，与 ArkTS 最接近。
// await 必须在 async 函数中（与 ArkTS 一致）。

func fetchNumber() async -> Int {
    return 42
}

@main
struct Main {
    static func main() async {
        let result = await fetchNumber()
        print("Result: \(result)")
        assert(result == 42)
    }
}
