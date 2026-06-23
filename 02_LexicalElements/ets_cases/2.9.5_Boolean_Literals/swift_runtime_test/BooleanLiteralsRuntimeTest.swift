// Swift Runtime Test - 对应 2.9.5 Boolean Literals
// 测试重点：布尔字面量的运行时语义正确性
// 覆盖 3 个 runtime 测试场景 (008-010)

import Foundation

@main
struct BooleanLiteralsRuntimeTest {
    static func main() {
        print("=== Swift Boolean Literals Runtime Test ===")
        print("")

        var totalAssertions = 0

        // 008: 布尔逻辑运算
        let x1 = true && true
        assert(x1 == true, "008: true && true failed")
        totalAssertions += 1
        print("[Swift] 008 true && true: PASSED (\(x1))")

        let x2 = true && false
        assert(x2 == false, "008: true && false failed")
        totalAssertions += 1
        print("[Swift] 008 true && false: PASSED (\(x2))")

        let x3 = false && true
        assert(x3 == false, "008: false && true failed")
        totalAssertions += 1
        print("[Swift] 008 false && true: PASSED (\(x3))")

        let x4 = false && false
        assert(x4 == false, "008: false && false failed")
        totalAssertions += 1
        print("[Swift] 008 false && false: PASSED (\(x4))")

        let x5 = true || true
        assert(x5 == true, "008: true || true failed")
        totalAssertions += 1
        print("[Swift] 008 true || true: PASSED (\(x5))")

        let x6 = true || false
        assert(x6 == true, "008: true || false failed")
        totalAssertions += 1
        print("[Swift] 008 true || false: PASSED (\(x6))")

        let x7 = false || true
        assert(x7 == true, "008: false || true failed")
        totalAssertions += 1
        print("[Swift] 008 false || true: PASSED (\(x7))")

        let x8 = false || false
        assert(x8 == false, "008: false || false failed")
        totalAssertions += 1
        print("[Swift] 008 false || false: PASSED (\(x8))")

        // 009: 布尔比较运算
        let x9 = true == true
        assert(x9 == true, "009: true == true failed")
        totalAssertions += 1
        print("[Swift] 009 true == true: PASSED (\(x9))")

        let x10 = false == false
        assert(x10 == true, "009: false == false failed")
        totalAssertions += 1
        print("[Swift] 009 false == false: PASSED (\(x10))")

        let x11 = true != false
        assert(x11 == true, "009: true != false failed")
        totalAssertions += 1
        print("[Swift] 009 true != false: PASSED (\(x11))")

        let x12 = true != true
        assert(x12 == false, "009: true != true failed")
        totalAssertions += 1
        print("[Swift] 009 true != true: PASSED (\(x12))")

        // 010: 布尔 NOT 运算
        let x13 = !true
        assert(x13 == false, "010: !true failed")
        totalAssertions += 1
        print("[Swift] 010 !true: PASSED (\(x13))")

        let x14 = !false
        assert(x14 == true, "010: !false failed")
        totalAssertions += 1
        print("[Swift] 010 !false: PASSED (\(x14))")

        let x15 = !(!true)
        assert(x15 == true, "010: !!true failed")
        totalAssertions += 1
        print("[Swift] 010 !!true: PASSED (\(x15))")

        print("")
        print("=== Swift Boolean Literals Runtime Test PASSED ===")
        print("Total assertions passed: \(totalAssertions)")
    }
}
