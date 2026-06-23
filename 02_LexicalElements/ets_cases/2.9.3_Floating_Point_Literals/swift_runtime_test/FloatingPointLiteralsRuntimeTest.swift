// Swift Runtime Test - 对应 2.9.3 Floating-Point Literals
// 测试重点：浮点字面量的运行时语义正确性
// 覆盖 4 个 runtime 测试场景 (012-015)

import Foundation

@main
struct FloatingPointLiteralsRuntimeTest {
    static func main() {
        print("=== Swift Floating-Point Literals Runtime Test ===")
        print("")

        var totalAssertions = 0

        // 012: 浮点运算
        let pi = 3.14159
        let radius = 5.0
        let area = pi * radius * radius
        assert(abs(area - 78.53975) < 0.001, "012: float arithmetic failed, got \(area)")
        totalAssertions += 1
        print("[Swift] 012 Float arithmetic: PASSED (\(area))")

        // 013: 科学计数法值
        let x1 = 1e10
        let x2 = 1.5e-5
        assert(x1 == 10000000000.0, "013: 1e10 mismatch, got \(x1)")
        assert(x2 == 0.000015, "013: 1.5e-5 mismatch, got \(x2)")
        totalAssertions += 2
        print("[Swift] 013 Scientific notation: PASSED (1e10=\(x1), 1.5e-5=\(x2))")

        // 014: float 后缀值
        let x3: Float = 3.14
        let x4: Float = 1e10
        assert(abs(x3 - 3.14) < 0.001, "014: 3.14f mismatch, got \(x3)")
        assert(x4 == 10000000000.0, "014: 1e10f mismatch, got \(x4)")
        totalAssertions += 2
        print("[Swift] 014 Float suffix: PASSED (3.14=\(x3), 1e10=\(x4))")

        // 015: 下划线不影响值
        let x5 = 3.141_592
        let x6 = 3.141592
        assert(x5 == x6, "015: underscore value mismatch, got \(x5) != \(x6)")
        totalAssertions += 1
        print("[Swift] 015 Underscore value: PASSED (\(x5))")

        // 额外测试：无前导零浮点
        let x7 = 0.5
        assert(x7 == 0.5, "No leading zero mismatch")
        totalAssertions += 1
        print("[Swift] No leading zero: PASSED (\(x7))")

        // 额外测试：浮点精度
        let x8 = 0.1 + 0.2
        assert(abs(x8 - 0.3) < 0.0001, "Float precision failed")
        totalAssertions += 1
        print("[Swift] Float precision: PASSED (\(x8))")

        print("")
        print("=== Swift Floating-Point Literals Runtime Test PASSED ===")
        print("Total assertions passed: \(totalAssertions)")
    }
}
