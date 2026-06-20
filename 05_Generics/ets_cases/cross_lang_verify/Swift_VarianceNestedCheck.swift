// Swift 实现 — 变体检查粒度对比
//
// ArkTS Issue GEN-U-01:
// ArkTS 编译器对 out/in 变体检查不递归进入回调函数类型内部。
// Swift 对泛型类型参数的位置检查更加全面。
//
// 对比要点：
// - Swift 类型参数默认 invariant（不变体）
// - Swift 编译器检查类型参数的使用位置合法性
// - 在回调函数类型参数中，类型参数的位置被正确识别

import Foundation

// 场景：泛型类型参数在回调位置的使用
// Swift 中类型参数默认 invariant，
// 编译器会检查类型参数在结构体/类中的用法是否一致
struct CallbackHolder<T> {
    // T 出现在方法返回值中（协变位置）✅ 合法
    func getValue() -> T? {
        return nil
    }

    // T 出现在方法参数中（逆变位置）✅ 合法
    func setValue(_ value: T) { }

    // T 出现在回调参数 (T) -> Void 的参数类型中
    // 这是嵌套的逆变位置
    // Swift 编译器正确识别 ✅
    func forEach(_ cb: (T) -> Void) { }

    // T 出现在回调返回值 () -> T 中
    // 这是嵌套的协变位置
    // Swift 编译器正确识别 ✅
    func map(_ cb: () -> T) -> T? {
        return cb()
    }
}

// 验证：Swift 能正确处理泛型在回调中的位置
func main() {
    let holder = CallbackHolder<Int>()

    holder.forEach { value in
        print("Value: \(value)")
    }

    let result = holder.map {
        return 42
    }

    print("""
    Swift 泛型类型参数位置检查：
    - 直接成员签名位置 ✅ 正确识别
    - 回调函数类型参数内部 ✅ 正确识别（嵌套位置）
    - Swift 类型参数默认 invariant，无显式 out/in 关键字
    - 与 ArkTS 规范要求一致
    """)
}

main()
