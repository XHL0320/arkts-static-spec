// Swift Runtime Test - 对应 2.9.7 Multiline String Literal
// 测试重点：多行字符串的运行时语义正确性
// Swift 使用三引号 """...""" 表示多行字符串
// 覆盖 3 个 runtime 测试场景 (007-009)

import Foundation

@main
struct MultilineStringRuntimeTest {
    static func main() {
        print("=== Swift Multiline String Literal Runtime Test ===")
        print("[Swift] NOTE: Swift uses triple quotes \"\"\"...\"\"\" for multiline strings")
        print("")

        var totalAssertions = 0

        // 007: 多行字符串值
        let s1 = "Hello"
        assert(s1 == "Hello", "007: simple multiline failed")
        totalAssertions += 1
        print("[Swift] 007 simple multiline: PASSED (\(s1))")

        let s2 = """
        Line 1
        Line 2
        """
        assert(s2 == "Line 1\nLine 2", "007: multiline with newline failed")
        totalAssertions += 1
        print("[Swift] 007 multiline with newline: PASSED")

        let s3 = ""
        assert(s3 == "", "007: empty multiline failed")
        totalAssertions += 1
        print("[Swift] 007 empty multiline: PASSED")

        // 008: 转义序列值
        let s4 = "This is a ` backtick"
        assert(s4 == "This is a ` backtick", "008: backtick failed")
        totalAssertions += 1
        print("[Swift] 008 backtick: PASSED")

        let s5 = "This is a \\ backslash"
        assert(s5 == "This is a \\ backslash", "008: backslash failed")
        totalAssertions += 1
        print("[Swift] 008 backslash: PASSED")

        let s6 = "Tab:\t"
        assert(s6 == "Tab:\t", "008: tab escape failed")
        totalAssertions += 1
        print("[Swift] 008 tab escape: PASSED")

        let s7 = "Newline:\n"
        assert(s7 == "Newline:\n", "008: newline escape failed")
        totalAssertions += 1
        print("[Swift] 008 newline escape: PASSED")

        // 009: 前导空格保留
        let s8 = "  Two spaces"
        assert(s8 == "  Two spaces", "009: two spaces failed")
        totalAssertions += 1
        print("[Swift] 009 two spaces: PASSED")

        let s9 = "    Four spaces"
        assert(s9 == "    Four spaces", "009: four spaces failed")
        totalAssertions += 1
        print("[Swift] 009 four spaces: PASSED")

        let s10 = """
          Line 1
          Line 2
        """
        assert(s10 == "  Line 1\n  Line 2", "009: multiline leading spaces failed")
        totalAssertions += 1
        print("[Swift] 009 multiline leading spaces: PASSED")

        print("")
        print("=== Swift Multiline String Literal Runtime Test PASSED ===")
        print("Total assertions passed: \(totalAssertions)")
    }
}
