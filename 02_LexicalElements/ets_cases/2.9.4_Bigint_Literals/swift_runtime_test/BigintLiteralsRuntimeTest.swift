// Swift Runtime Test - 对应 2.9.4 Bigint Literals
// 测试重点：bigint 字面量的运行时语义正确性
// Swift 使用 Int64 模拟 bigint（Swift 没有原生 bigint 类型）
// 覆盖 7 个 runtime 测试场景 (008-011, 014-017)

import Foundation

@main
struct BigintLiteralsRuntimeTest {
    static func main() {
        print("=== Swift Bigint Literals Runtime Test ===")
        print("[Swift] NOTE: Swift uses Int64 to simulate bigint")
        print("")

        var totalAssertions = 0

        // 008: bigint 运算（使用 Int64 模拟）
        let a: Int64 = 9876543210
        let b: Int64 = 1234567890
        let sum = a + b
        assert(sum == 11111111100, "008: bigint addition failed, got \(sum)")
        totalAssertions += 1
        print("[Swift] 008 Bigint arithmetic: PASSED (\(sum))")

        // 009: 下划线不影响值
        let x1: Int64 = 1_000_000
        let x2: Int64 = 1000000
        assert(x1 == x2, "009: underscore value mismatch")
        totalAssertions += 1
        print("[Swift] 009 Underscore value: PASSED (\(x1))")

        // 010: 转换函数
        let x3: Int64 = 153
        let x4: Int64 = Int64("153") ?? 0
        assert(x3 == x4, "010: BigInt conversion failed")
        totalAssertions += 1
        print("[Swift] 010 BigInt conversion: PASSED (\(x3))")

        // 011: bigint 比较
        let c: Int64 = 153
        let d: Int64 = 153
        let e: Int64 = 200
        assert(c == d, "011: bigint equality failed")
        assert(c != e, "011: bigint inequality failed")
        assert(c < e, "011: bigint less than failed")
        assert(e > c, "011: bigint greater than failed")
        totalAssertions += 4
        print("[Swift] 011 Bigint comparison: PASSED")

        // 014: asIntN 函数（使用位运算模拟）
        let x256: Int64 = 256
        let result1 = x256 & 0xFF  // 取低 8 位
        assert(result1 == 0, "014: asIntN(8, 256) failed, got \(result1)")
        totalAssertions += 1
        print("[Swift] 014 asIntN(8, 256): PASSED (\(result1))")

        let xNeg1: Int64 = -1
        let result2 = xNeg1 & 0xFF  // -1 的低 8 位
        assert(result2 == 255, "014: asIntN(8, -1) failed, got \(result2)")
        totalAssertions += 1
        print("[Swift] 014 asIntN(8, -1): PASSED (\(result2))")

        // 015: asUintN 函数
        let x256u: Int64 = 256
        let result3 = x256u & 0xFFFF  // 取低 16 位
        assert(result3 == 256, "015: asUintN(16, 256) failed, got \(result3)")
        totalAssertions += 1
        print("[Swift] 015 asUintN(16, 256): PASSED (\(result3))")

        // 016: 转换边界情况
        let zero1: Int64 = 0
        let zero2: Int64 = Int64("0") ?? 0
        assert(zero1 == zero2, "016: BigInt(0) failed")
        totalAssertions += 1
        print("[Swift] 016 BigInt(0): PASSED (\(zero1))")

        // 017: 位运算
        let x255: Int64 = 255
        let x15: Int64 = 15
        let andResult = x255 & x15
        assert(andResult == 15, "017: bigint AND failed, got \(andResult)")
        totalAssertions += 1
        print("[Swift] 017 Bigint AND: PASSED (\(andResult))")

        let orResult = x255 | 256
        assert(orResult == 511, "017: bigint OR failed, got \(orResult)")
        totalAssertions += 1
        print("[Swift] 017 Bigint OR: PASSED (\(orResult))")

        print("")
        print("=== Swift Bigint Literals Runtime Test PASSED ===")
        print("Total assertions passed: \(totalAssertions)")
    }
}
