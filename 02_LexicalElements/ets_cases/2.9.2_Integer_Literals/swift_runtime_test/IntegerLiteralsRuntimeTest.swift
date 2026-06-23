// Swift Runtime Test - 对应 2.9.2 Integer Literals
// 测试重点：整数字面量的运行时语义正确性
// 覆盖 4 个 runtime 测试场景 (016-019)

import Foundation

@main
struct IntegerLiteralsRuntimeTest {
    static func main() {
        print("=== Swift Integer Literals Runtime Test ===")
        print("")

        var totalAssertions = 0

        // 016: 各进制值相等
        let dec = 153
        let hex = 0x99
        let oct = 0o231
        let bin = 0b10011001
        assert(dec == hex, "016: dec != hex, got \(hex)")
        assert(dec == oct, "016: dec != oct, got \(oct)")
        assert(dec == bin, "016: dec != bin, got \(bin)")
        totalAssertions += 3
        print("[Swift] 016 Radix equality: PASSED (153 == 0x99 == 0o231 == 0b10011001)")

        // 017: 下划线不影响值
        let withUnderscore = 1_000_000
        let withoutUnderscore = 1000000
        assert(withUnderscore == withoutUnderscore, "017: underscore value mismatch")
        totalAssertions += 1
        print("[Swift] 017 Underscore value: PASSED (\(withUnderscore))")

        // 018: 类型推断
        let maxInt = 0x7FFFFFFF  // max(Int32)
        let bigValue: Int64 = 0x80000000  // 超出 Int32 范围
        let maxLong = 9223372036854775807  // max(Int64)
        assert(maxInt == 2147483647, "018: max(Int32) mismatch, got \(maxInt)")
        assert(bigValue == 2147483648, "018: Int64 value mismatch, got \(bigValue)")
        totalAssertions += 2
        print("[Swift] 018 Type inference: PASSED (max(Int32)=\(maxInt), Int64=\(bigValue))")

        // 019: 整数运算
        let a = 100
        let b = 200
        let sum = a + b
        assert(sum == 300, "019: addition mismatch, got \(sum)")

        let big1: Int64 = 2147483648
        let big2: Int64 = 2147483648
        let bigSum = big1 + big2
        assert(bigSum == 4294967296, "019: Int64 addition mismatch, got \(bigSum)")
        totalAssertions += 2
        print("[Swift] 019 Arithmetic: PASSED (int sum=\(sum), Int64 sum=\(bigSum))")

        // 边界值测试
        let minInt = -2147483647 - 1
        assert(minInt == -2147483648, "min(Int32) mismatch")
        totalAssertions += 1
        print("[Swift] min(Int32): PASSED (\(minInt))")

        print("")
        print("=== Swift Integer Literals Runtime Test PASSED ===")
        print("Total assertions passed: \(totalAssertions)")
    }
}
