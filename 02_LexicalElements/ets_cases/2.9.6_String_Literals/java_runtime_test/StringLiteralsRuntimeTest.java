// Java Runtime Test - 对应 2.9.6 String Literals
// 测试重点：字符串拼接、转义序列、长度、比较、引号等价
// 覆盖 5 个 runtime 测试场景 (013-017)

public class StringLiteralsRuntimeTest {
    public static void main(String[] args) {
        int totalAssertions = 0;

        System.out.println("[Java] String Literals Runtime Test");

        // 013: 字符串拼接
        String s1 = "Hello";
        String s2 = " World";
        String s3 = s1 + s2;
        assert s3.equals("Hello World") : "013: string concat failed";
        totalAssertions++;
        System.out.println("[Java] 013 string concat: PASSED (" + s3 + ")");

        String s4 = "";
        String s5 = "test";
        String s6 = s4 + s5;
        assert s6.equals("test") : "013: empty string concat failed";
        totalAssertions++;
        System.out.println("[Java] 013 empty string concat: PASSED (" + s6 + ")");

        String s7 = "a" + "b" + "c";
        assert s7.equals("abc") : "013: multi concat failed";
        totalAssertions++;
        System.out.println("[Java] 013 multi concat: PASSED (" + s7 + ")");

        // 014: 转义序列值
        String s8 = "\u0041";
        assert s8.equals("A") : "014: \\u0041 failed";
        totalAssertions++;
        System.out.println("[Java] 014 unicode escape: PASSED (" + s8 + ")");

        String s9 = "\\";
        assert s9.equals("\\") : "014: backslash escape failed";
        totalAssertions++;
        System.out.println("[Java] 014 backslash escape: PASSED (" + s9 + ")");

        String s10 = "\t";
        assert s10.equals("\t") : "014: tab escape failed";
        totalAssertions++;
        System.out.println("[Java] 014 tab escape: PASSED");

        String s11 = "\n";
        assert s11.equals("\n") : "014: newline escape failed";
        totalAssertions++;
        System.out.println("[Java] 014 newline escape: PASSED");

        // 015: 字符串长度
        String s12 = "";
        assert s12.length() == 0 : "015: empty string length failed";
        totalAssertions++;
        System.out.println("[Java] 015 empty string length: PASSED (" + s12.length() + ")");

        String s13 = "Hello";
        assert s13.length() == 5 : "015: Hello length failed";
        totalAssertions++;
        System.out.println("[Java] 015 Hello length: PASSED (" + s13.length() + ")");

        String s14 = "\n";
        assert s14.length() == 1 : "015: newline length failed";
        totalAssertions++;
        System.out.println("[Java] 015 newline length: PASSED (" + s14.length() + ")");

        // 016: 字符串比较
        String s15 = "Hello";
        String s16 = "Hello";
        assert s15.equals(s16) : "016: equality failed";
        totalAssertions++;
        System.out.println("[Java] 016 equality: PASSED");

        String s17 = "Hello";
        String s18 = "World";
        assert !s17.equals(s18) : "016: inequality failed";
        totalAssertions++;
        System.out.println("[Java] 016 inequality: PASSED");

        String s19 = "hello";
        String s20 = "Hello";
        assert !s19.equals(s20) : "016: case sensitivity failed";
        totalAssertions++;
        System.out.println("[Java] 016 case sensitivity: PASSED");

        // 017: 引号等价（Java 只有双引号）
        String s21 = "Hello";
        String s22 = "Hello";
        assert s21.equals(s22) : "017: quote equivalence failed";
        totalAssertions++;
        System.out.println("[Java] 017 quote equivalence: PASSED");

        System.out.println("=== Java String Literals Runtime Test PASSED ===");
        System.out.println("Total assertions passed: " + totalAssertions);
    }
}
