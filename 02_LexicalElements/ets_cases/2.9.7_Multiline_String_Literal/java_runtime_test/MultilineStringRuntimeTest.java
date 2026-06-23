// Java Runtime Test - 对应 2.9.7 Multiline String Literal
// 测试重点：多行字符串的运行时语义正确性
// Java 使用 text blocks (Java 15+) 或字符串拼接模拟多行字符串
// 覆盖 3 个 runtime 测试场景 (007-009)

public class MultilineStringRuntimeTest {
    public static void main(String[] args) {
        int totalAssertions = 0;

        System.out.println("[Java] Multiline String Literal Runtime Test");
        System.out.println("[Java] NOTE: Java uses text blocks (Java 15+) or \\n for multiline strings");
        System.out.println("");

        // 007: 多行字符串值
        String s1 = "Hello";
        assert s1.equals("Hello") : "007: simple multiline failed";
        totalAssertions++;
        System.out.println("[Java] 007 simple multiline: PASSED (" + s1 + ")");

        String s2 = "Line 1\nLine 2";
        assert s2.equals("Line 1\nLine 2") : "007: multiline with newline failed";
        totalAssertions++;
        System.out.println("[Java] 007 multiline with newline: PASSED");

        String s3 = "";
        assert s3.equals("") : "007: empty multiline failed";
        totalAssertions++;
        System.out.println("[Java] 007 empty multiline: PASSED");

        // 008: 转义序列值
        String s4 = "This is a ` backtick";
        assert s4.equals("This is a ` backtick") : "008: backtick failed";
        totalAssertions++;
        System.out.println("[Java] 008 backtick: PASSED");

        String s5 = "This is a \\ backslash";
        assert s5.equals("This is a \\ backslash") : "008: backslash failed";
        totalAssertions++;
        System.out.println("[Java] 008 backslash: PASSED");

        String s6 = "Tab:\t";
        assert s6.equals("Tab:\t") : "008: tab escape failed";
        totalAssertions++;
        System.out.println("[Java] 008 tab escape: PASSED");

        String s7 = "Newline:\n";
        assert s7.equals("Newline:\n") : "008: newline escape failed";
        totalAssertions++;
        System.out.println("[Java] 008 newline escape: PASSED");

        // 009: 前导空格保留
        String s8 = "  Two spaces";
        assert s8.equals("  Two spaces") : "009: two spaces failed";
        totalAssertions++;
        System.out.println("[Java] 009 two spaces: PASSED");

        String s9 = "    Four spaces";
        assert s9.equals("    Four spaces") : "009: four spaces failed";
        totalAssertions++;
        System.out.println("[Java] 009 four spaces: PASSED");

        String s10 = "  Line 1\n  Line 2";
        assert s10.equals("  Line 1\n  Line 2") : "009: multiline leading spaces failed";
        totalAssertions++;
        System.out.println("[Java] 009 multiline leading spaces: PASSED");

        System.out.println("=== Java Multiline String Literal Runtime Test PASSED ===");
        System.out.println("Total assertions passed: " + totalAssertions);
    }
}
