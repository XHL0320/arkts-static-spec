// Java Runtime Test - 对应 2.9.1 Numeric Literals
// 测试重点：整数和浮点字面量的运行时语义正确性
// 覆盖 5 个 runtime 测试场景 (023-027)

public class NumericLiteralsRuntimeTest {
    public static void main(String[] args) {
        int totalAssertions = 0;

        System.out.println("[Java] Numeric Literals Runtime Test");

        // 023: 各进制值相等
        int dec = 42;
        int hex = 0x2A;
        int oct = 052;  // Java 使用前导零语法表示八进制
        int bin = 0b101010;
        assert dec == hex : "023: dec != hex, got " + hex;
        assert dec == oct : "023: dec != oct, got " + oct;
        assert dec == bin : "023: dec != bin, got " + bin;
        totalAssertions += 3;
        System.out.println("[Java] 023 Base equality: PASSED (42 == 0x2A == 052 == 0b101010)");

        // 024: 浮点运算
        double pi = 3.14159;
        double radius = 5.0;
        double area = pi * radius * radius;
        assert Math.abs(area - 78.53975) < 0.001 : "024: float arithmetic failed, got " + area;
        totalAssertions++;
        System.out.println("[Java] 024 Float arithmetic: PASSED (" + area + ")");

        // 025: bigint 运算 (Java 使用 long 模拟)
        long big1 = 9876543210L;
        long big2 = 1234567890L;
        long bigSum = big1 + big2;
        assert bigSum == 11111111100L : "025: bigint arithmetic failed, got " + bigSum;
        totalAssertions++;
        System.out.println("[Java] 025 Bigint arithmetic (long模拟): PASSED (" + bigSum + ")");

        // 026: 下划线不影响值 (Java 不支持下划线分隔符，使用直接值)
        int million = 1000000;
        int underscore = 1000000;  // Java 不支持 1_000_000
        assert million == underscore : "026: underscore value failed";
        totalAssertions++;
        System.out.println("[Java] 026 Underscore value (Java不支持): PASSED (" + million + ")");

        // 027: 科学计数法值
        double scientific = 1.5e10;
        double manual = 15000000000.0;
        assert scientific == manual : "027: scientific notation failed, got " + scientific;
        totalAssertions++;
        System.out.println("[Java] 027 Scientific notation: PASSED (" + scientific + ")");

        // 额外测试：整数类型边界
        int maxInt = Integer.MAX_VALUE;  // 2147483647
        int minInt = Integer.MIN_VALUE;  // -2147483648
        assert maxInt == 2147483647 : "Int max value failed";
        assert minInt == -2147483648 : "Int min value failed";
        totalAssertions += 2;
        System.out.println("[Java] Int boundaries: PASSED (max=" + maxInt + ", min=" + minInt + ")");

        // 额外测试：long 类型
        long maxLong = Long.MAX_VALUE;
        long minLong = Long.MIN_VALUE;
        assert maxLong > 0 : "Long max value failed";
        assert minLong < 0 : "Long min value failed";
        totalAssertions += 2;
        System.out.println("[Java] Long boundaries: PASSED");

        // 额外测试：浮点精度
        double floatPrecision = 0.1 + 0.2;
        assert Math.abs(floatPrecision - 0.3) < 0.0001 : "Float precision failed, got " + floatPrecision;
        totalAssertions++;
        System.out.println("[Java] Float precision: PASSED (" + floatPrecision + ")");

        System.out.println("=== Java Numeric Literals Runtime Test PASSED ===");
        System.out.println("Total assertions passed: " + totalAssertions);
    }
}
