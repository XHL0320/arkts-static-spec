// Java Runtime Test - 对应 2.9.2 Integer Literals
// 测试重点：整数字面量的运行时语义正确性
// 覆盖 4 个 runtime 测试场景 (016-019)

public class IntegerLiteralsRuntimeTest {
    public static void main(String[] args) {
        int totalAssertions = 0;

        System.out.println("[Java] Integer Literals Runtime Test");

        // 016: 各进制值相等
        int dec = 153;
        int hex = 0x99;
        int oct = 0231;  // Java 使用前导零语法表示八进制
        int bin = 0b10011001;
        assert dec == hex : "016: dec != hex, got " + hex;
        assert dec == oct : "016: dec != oct, got " + oct;
        assert dec == bin : "016: dec != bin, got " + bin;
        totalAssertions += 3;
        System.out.println("[Java] 016 Radix equality: PASSED (153 == 0x99 == 0231 == 0b10011001)");

        // 017: 下划线不影响值
        int withUnderscore = 1_000_000;
        int withoutUnderscore = 1000000;
        assert withUnderscore == withoutUnderscore : "017: underscore value mismatch";
        totalAssertions++;
        System.out.println("[Java] 017 Underscore value: PASSED (" + withUnderscore + ")");

        // 018: 类型推断
        int maxInt = 0x7FFFFFFF;  // max(int)
        long bigValue = 0x80000000L;  // 超出 int 范围
        long maxLong = 9223372036854775807L;  // max(long)
        assert maxInt == 2147483647 : "018: max(int) mismatch, got " + maxInt;
        assert bigValue == 2147483648L : "018: long value mismatch, got " + bigValue;
        totalAssertions += 2;
        System.out.println("[Java] 018 Type inference: PASSED (max(int)=" + maxInt + ", long=" + bigValue + ")");

        // 019: 整数运算
        int a = 100;
        int b = 200;
        int sum = a + b;
        assert sum == 300 : "019: addition mismatch, got " + sum;

        long big1 = 2147483648L;
        long big2 = 2147483648L;
        long bigSum = big1 + big2;
        assert bigSum == 4294967296L : "019: long addition mismatch, got " + bigSum;
        totalAssertions += 2;
        System.out.println("[Java] 019 Arithmetic: PASSED (int sum=" + sum + ", long sum=" + bigSum + ")");

        // 边界值测试
        int minInt = -2147483647 - 1;
        assert minInt == -2147483648 : "min(int) mismatch";
        totalAssertions++;
        System.out.println("[Java] min(int): PASSED (" + minInt + ")");

        System.out.println("=== Java Integer Literals Runtime Test PASSED ===");
        System.out.println("Total assertions passed: " + totalAssertions);
    }
}
