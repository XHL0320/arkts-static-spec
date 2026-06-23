// Swift Runtime Test - 对应 2.9.6 String Literals
// 测试重点：字符串拼接、转义序列、长度、比较、引号等价
// 覆盖 5 个 runtime 测试场景 (013-017)

import Foundation

@main
struct StringLiteralsRuntimeTest {
    static func main() {
        print("=== Swift String Literals Runtime Test ===")
        print("")

        var totalAssertions = 0

        // 013: 字符串拼接
        let s1 = "Hello"
        let s2 = " World"
        let s3 = s1 + s2
        assert(s3 == "Hello World", "013: string concat failed")
        totalAssertions += 1
        print("[Swift] 013 string concat: PASSED (\(s3))")

        let s4 = ""
        let s5 = "test"
        let s6 = s4 + s5
        assert(s6 == "test", "013: empty string concat failed")
        totalAssertions += 1
        print("[Swift] 013 empty string concat: PASSED (\(s6))")

        let s7 = "a" + "b" + "c"
        assert(s7 == "abc", "013: multi concat failed")
        totalAssertions += 1
        print("[Swift] 013 multi concat: PASSED (\(s7))")

        // 014: 转义序列值
        let s8 = "\u{0041}"
        assert(s8 == "A", "014: unicode escape failed")
        totalAssertions += 1
        print("[Swift] 014 unicode escape: PASSED (\(s8))")

        let s9 = "\\"
        assert(s9 == "\\", "014: backslash escape failed")
        totalAssertions += 1
        print("[Swift] 014 backslash escape: PASSED (\(s9))")

        let s10 = "\t"
        assert(s10 == "\t", "014: tab escape failed")
        totalAssertions += 1
        print("[Swift] 014 tab escape: PASSED")

        let s11 = "\n"
        assert(s11 == "\n", "014: newline escape failed")
        totalAssertions += 1
        print("[Swift] 014 newline escape: PASSED")

        // 015: 字符串长度
        let s12 = ""
        assert(s12.count == 0, "015: empty string length failed")
        totalAssertions += 1
        print("[Swift] 015 empty string length: PASSED (\(s12.count))")

        let s13 = "Hello"
        assert(s13.count == 5, "015: Hello length failed")
        totalAssertions += 1
        print("[Swift] 015 Hello length: PASSED (\(s13.count))")

        let s14 = "\n"
        assert(s14.count == 1, "015: newline length failed")
        totalAssertions += 1
        print("[Swift] 015 newline length: PASSED (\(s14.count))")

        // 016: 字符串比较
        let s15 = "Hello"
        let s16 = "Hello"
        assert(s15 == s16, "016: equality failed")
        totalAssertions += 1
        print("[Swift] 016 equality: PASSED")

        let s17 = "Hello"
        let s18 = "World"
        assert(s17 != s18, "016: inequality failed")
        totalAssertions += 1
        print("[Swift] 016 inequality: PASSED")

        let s19 = "hello"
        let s20 = "Hello"
        assert(s19 != s20, "016: case sensitivity failed")
        totalAssertions += 1
        print("[Swift] 016 case sensitivity: PASSED")

        // 017: 引号等价
        let s21 = "Hello"
        let s22 = "Hello"
        assert(s21 == s22, "017: quote equivalence failed")
        totalAssertions += 1
        print("[Swift] 017 quote equivalence: PASSED")

        print("")
        print("=== Swift String Literals Runtime Test PASSED ===")
        print("Total assertions passed: \(totalAssertions)")
    }
}
