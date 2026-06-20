// Swift 实现 — 预定义类型名 / 保留名作为标识符的冲突检测
//
// 对应 ArkTS issue: Spec 未完整列举保留名（analysis_report.md）
// ArkTS 中 `let int: number = 1;` 报 Semantic error（int 被保留），
// 而 Spec 仅列出 number / String / Record / Object / Array 作为预定义类型冲突示例。
//
// 对比要点：
// - Swift 中 Int / String / Double / Bool 是标准库类型（struct），不是关键字
// - 这些类型名可以做标识符（编译器产生警告 ⚠️ 而非错误 ❌）
// - Swift 使用 backtick 转义关键字做标识符
// - ArkTS 对 int/String 等保留策略比 Swift 更严格

import Foundation

// 场景 A：类型名作为标识符 → 警告（非编译错误）
func typeNameAsIdentifiers() {
    // Int 是标准库类型，但可以作为标识符
    // 编译器警告：'Int' used as a type, not as a identifier
    // 但不会编译错误
    let Int = 42  // ⚠️ 警告但不报错
    print("Int as identifier: \(Int)")

    let String = "hello"  // ⚠️ 警告
    print("String as identifier: \(String)")

    let Double = 3.14  // ⚠️ 警告
    print("Double as identifier: \(Double)")
}

// 场景 B：关键字作为标识符 → 需要使用 backtick
func keywordAsIdentifier() {
    // `class` 是 Swift 关键字，需要用 backtick
    let `class` = "Swift class keyword"  // ✅ 使用 backtick 转义
    print("Keyword as identifier with backtick: \(`class`)")
}

// 场景 C：Box 不是 Swift 标准库保留名
class Box<T> {
    var value: T
    init(_ v: T) { self.value = v }
}

func main() {
    typeNameAsIdentifiers()
    keywordAsIdentifier()

    let box = Box(42)
    print("Box<Int> value: \(box.value)")

    print("\n=== 对比结论 ===")
    print("Swift 类型名（Int/String/Double）→ 可做标识符（警告），不是关键字")
    print("Swift 关键字 → 可用 backtick 转义做标识符")
    print("ArkTS 对 int/String 的保留策略比 Swift 更严格（直接编译错误）")
}

main()
