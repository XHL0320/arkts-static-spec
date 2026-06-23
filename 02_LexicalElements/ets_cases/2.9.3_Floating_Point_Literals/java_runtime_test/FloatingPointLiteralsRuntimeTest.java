// Java Runtime Test - 对应 2.9.3 Floating-Point Literals
// 测试重点：浮点字面量的运行时语义正确性
// 覆盖 4 个 runtime 测试场景 (012-015)

public class FloatingPointLiteralsRuntimeTest {
    public static void main(String[] args) {
        int totalAssertions = 0;

        System.out.println("[Java] Floating-Point Literals Runtime Test");

        // 012: 浮点运算
        double pi = 3.14159;
        double radius = 5.0;
        double area = pi * radius * radius;
        assert Math.abs(area - 78.53975) < 0.001 : "012: float arithmetic failed, got " + area;
        totalAssertions++;
        System.out.println("[Java] 012 Float arithmetic: PASSED (" + area + ")");

        // 013: 科学计数法值
        double x1 = 1e10;
        double x2 = 1.5e-5;
        assert x1 == 10000000000.0 : "013: 1e10 mismatch, got " + x1;
        assert x2 == 0.000015 : "013: 1.5e-5 mismatch, got " + x2;
        totalAssertions += 2;
        System.out.println("[Java] 013 Scientific notation: PASSED (1e10=" + x1 + ", 1.5e-5=" + x2 + ")");

        // 014: float 后缀值
        float x3 = 3.14f;
        float x4 = 1e10f;
        assert Math.abs(x3 - 3.14f) < 0.001 : "014: 3.14f mismatch, got " + x3;
        assert x4 == 10000000000.0f : "014: 1e10f mismatch, got " + x4;
        totalAssertions += 2;
        System.out.println("[Java] 014 Float suffix: PASSED (3.14f=" + x3 + ", 1e10f=" + x4 + ")");

        // 015: 下划线不影响值
        double x5 = 3.141_592;
        double x6 = 3.141592;
        assert x5 == x6 : "015: underscore value mismatch, got " + x5 + " != " + x6;
        totalAssertions++;
        System.out.println("[Java] 015 Underscore value: PASSED (" + x5 + ")");

        // 额外测试：无前导零浮点
        double x7 = .5;
        assert x7 == 0.5 : "No leading zero mismatch";
        totalAssertions++;
        System.out.println("[Java] No leading zero: PASSED (" + x7 + ")");

        // 额外测试：浮点精度
        double x8 = 0.1 + 0.2;
        assert Math.abs(x8 - 0.3) < 0.0001 : "Float precision failed";
        totalAssertions++;
        System.out.println("[Java] Float precision: PASSED (" + x8 + ")");

        System.out.println("=== Java Floating-Point Literals Runtime Test PASSED ===");
        System.out.println("Total assertions passed: " + totalAssertions);
    }
}
