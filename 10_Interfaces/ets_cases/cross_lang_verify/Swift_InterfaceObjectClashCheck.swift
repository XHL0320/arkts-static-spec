// Swift 实现 — protocol 中与 NSObject 方法冲突检测
//
// 对应 ArkTS ISS-10-01/02:
// - Swift protocol 无 Object 基类概念，不存在此问题
// - 仅当 protocol 继承 NSObjectProtocol 时有限制
// - 此 GAP 是 ArkTS/Java 特有的 Object 基类问题

import Foundation

// Swift protocol 没有与 NSObject 方法的隐式冲突
// 以下代码是合法的：
protocol MyProtocol {
    func toString() -> String  // ✅ Swift 中合法（无 Object 基类）
    func myMethod()
}

class Impl: MyProtocol {
    func toString() -> String {
        return "Custom toString"
    }

    func myMethod() {
        print("myMethod() called")
    }
}

func main() {
    let obj = Impl()
    print(obj.toString())
    obj.myMethod()

    print("\n=== 对比结论 ===")
    print("Swift: protocol 无 Object 基类冲突 → 不适用")
    print("Java: 接口中声明 Object 方法 → 编译错误 ✅")
    print("ArkTS: 编译器未实现此约束（GAP，与 Java 规范一致）")
}

main()
