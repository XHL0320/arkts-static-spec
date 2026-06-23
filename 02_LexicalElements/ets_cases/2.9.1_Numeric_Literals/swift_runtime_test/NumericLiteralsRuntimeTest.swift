// Swift Runtime Test - 对应 2.9.1 Numeric Literals
// 测试重点：整数和浮点字面量的运行时语义正确性
// 覆盖 5 个 runtime 测试场景 (023-027)

import Foundation

@main
struct NumericLiteralsRuntimeTest {
    static func main() {
        print("=== Swift Numeric Literals Runtime Test ===")
        print("")

        var totalAssertions = 0

        // 023: 各进制值相等
        let dec = 42
        let hex = 0x2A
        let oct = 0o52
        let bin = 0b101010
        assert(dec == hex, "023: dec != hex, got \(hex)")
        assert(dec == oct, "023: dec != oct, got \(oct)")
        assert(dec == bin, "023: dec != bin, got \(bin)")
        totalAssertions += 3
        print("[Swift] 023 Base equality: PASSED (42 == 0x2A == 0o52 == 0b101010)")

        // 024: 浮点运算
        let pi = 3.14159
        let radius = 5.0
        let area = pi * radius * radius
        assert(abs(area - 78.53975) < 0.001, "024: float arithmetic failed, got \(area)")
        totalAssertions += 1
        print("[Swift] 024 Float arithmetic: PASSED (\(area))")

        // 025: bigint 运算 (Swift 使用 Int64 模拟)
        let big1: Int64 = 9876543210
        let big2: Int64 = 1234567890
        let bigSum = big1 + big2
        assert(bigSum == 11111111100, "025: bigint arithmetic failed, got \(bigSum)")
        totalAssertions += 1
        print("[Swift] 025 Bigint arithmetic (Int64模拟): PASSED (\(bigSum))")

        // 026: 下划线不影响值
        let million = 1_000_000
        let noUnderscore = 1000000
        assert(million == noUnderscore, "026: underscore value failed")
        totalAssertions += 1
        print("[Swift] 026 Underscore value: PASSED (\(million))")

        // 027: 科学计数法值
        let scientific = 1.5e10
        let manual = 15000000000.0
        assert(scientific == manual, "027: scientific notation failed, got \(scientific)")
        totalAssertions += 1
        print("[Swift] 027 Scientific notation: PASSED (\(scientific))")

        // 额外测试：整数类型边界
        let maxInt = Int.max
        let minInt = Int.min
        assert(maxInt > 0, "Int max value failed")
        assert(minInt < 0, "Int min value failed")
        totalAssertions += 2
        print("[Swift] Int boundaries: PASSED (max=\(maxInt), min=\(minInt))")

        // 额外测试：Int32 边界
        let maxInt32 = Int32.max  // 2147483647
        let minInt32 = Int32.min  // -2147483648
        assert(maxInt32 == 2147483647, "Int32 max value failed")
        assert(minInt32 == -2147483648, "Int32 min value failed")
        totalAssertions += 2
        print("[Swift] Int32 boundaries: PASSED (max=\(maxInt32), min=\(minInt32))")

        // 额外测试：浮点精度
        let floatPrecision = 0.1 + 0.2
        assert(abs(floatPrecision - 0.3) < 0.0001, "Float precision failed, got \(floatPrecision)")
        totalAssertions += 1
        print("[Swift] Float precision: PASSED (\(floatPrecision))")

        // 额外测试：十六进制浮点
        let hexFloat = 0x1.921fb54442d18p+1  // π 的十六进制浮点表示
        assert(abs(hexFloat - 3.14159265358979) < 0.0001, "Hex float failed, got \(hexFloat)")
        totalAssertions += 1
        print("[Swift] Hex float: PASSED (\(hexFloat))")

        print("")
        print("=== Swift Numeric Literals Runtime Test PASSED ===")
        print("Total assertions passed: \(totalAssertions)")
    }
}
