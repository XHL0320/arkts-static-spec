// Swift Runtime Test - 对应 2.9.8 Undefined Literal (补充用例)
// 测试重点：undefined 在字符串连接、模板字符串、函数参数、对象属性、可选链、空值合并
// 覆盖 6 个 runtime 测试场景 (015-020)

import Foundation

@main
struct UndefinedLiteralNewRuntimeTest {
    static func main() {
        print("=== Swift Undefined Literal New Runtime Test ===")
        print("[Swift] NOTE: Swift uses 'nil' instead of 'undefined'")
        print("")

        var totalAssertions = 0

        // 015: undefined 在字符串连接中
        let x1: Int? = nil
        let s1 = "value: \(String(describing: x1))"
        assert(s1 == "value: nil", "015: string concat failed, got \(s1)")
        totalAssertions += 1
        print("[Swift] 015 string concat: PASSED (\(s1))")

        // 016: undefined 在模板字符串中
        let x2: String? = nil
        let s2 = "value: \(String(describing: x2))"
        assert(s2 == "value: nil", "016: template string failed, got \(s2)")
        totalAssertions += 1
        print("[Swift] 016 template string: PASSED (\(s2))")

        // 017: undefined 作为函数参数
        let r1 = testFunc(nil)
        assert(r1 == 0, "017: func arg failed, got \(r1)")
        totalAssertions += 1
        print("[Swift] 017 func arg: PASSED (\(r1))")

        let r2 = testFunc(42)
        assert(r2 == 42, "017: func arg failed, got \(r2)")
        totalAssertions += 1
        print("[Swift] 017 func arg: PASSED (\(r2))")

        // 018: undefined 在对象属性访问中
        let obj = Obj(name: "test", value: nil)
        let x3: Int? = obj.value
        assert(x3 == nil, "018: obj property failed, got \(String(describing: x3))")
        totalAssertions += 1
        print("[Swift] 018 obj property: PASSED (\(String(describing: x3)))")

        // 019: undefined 在可选链中
        let x4: Int? = obj.nested?.value
        assert(x4 == nil, "019: optional chain failed, got \(String(describing: x4))")
        totalAssertions += 1
        print("[Swift] 019 optional chain: PASSED (\(String(describing: x4)))")

        // 020: undefined 在空值合并中
        let x5: Int? = nil
        let r3 = x5 ?? 42
        assert(r3 == 42, "020: nullish coalescing failed, got \(r3)")
        totalAssertions += 1
        print("[Swift] 020 nullish coalescing: PASSED (\(r3))")

        let x6: Int? = 10
        let r4 = x6 ?? 42
        assert(r4 == 10, "020: nullish coalescing failed, got \(r4)")
        totalAssertions += 1
        print("[Swift] 020 nullish coalescing: PASSED (\(r4))")

        print("")
        print("=== Swift Undefined Literal New Runtime Test PASSED ===")
        print("Total assertions passed: \(totalAssertions)")
    }

    static func testFunc(_ x: Int?) -> Int {
        return x ?? 0
    }

    struct Nested {
        var value: Int
    }

    struct Obj {
        var name: String
        var value: Int?
        var nested: Nested?

        init(name: String, value: Int?) {
            self.name = name
            self.value = value
        }
    }
}
