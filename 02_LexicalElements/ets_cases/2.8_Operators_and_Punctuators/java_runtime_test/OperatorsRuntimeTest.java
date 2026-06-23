// Java Runtime Test - 对应 2.8 Operators and Punctuators 运行时验证
// 测试重点：各类运算符的运行时语义正确性
// Java 与 ArkTS 的运算符语义高度一致

public class OperatorsRuntimeTest {
    public static void main(String[] args) {
        int count = 0;

        System.out.println("[Java] Operators and Punctuators Runtime Test");

        // 维度 1：算术运算符
        int add = 10 + 20; count++;
        assert add == 30 : "Addition failed, got " + add;
        System.out.println("[Java] Arithmetic (+): PASSED (" + add + ")");

        int sub = 50 - 30; count++;
        assert sub == 20 : "Subtraction failed, got " + sub;
        System.out.println("[Java] Arithmetic (-): PASSED (" + sub + ")");

        int mul = 5 * 6; count++;
        assert mul == 30 : "Multiplication failed, got " + mul;
        System.out.println("[Java] Arithmetic (*): PASSED (" + mul + ")");

        int div = 100 / 4; count++;
        assert div == 25 : "Division failed, got " + div;
        System.out.println("[Java] Arithmetic (/): PASSED (" + div + ")");

        int mod = 17 % 5; count++;
        assert mod == 2 : "Modulo failed, got " + mod;
        System.out.println("[Java] Arithmetic (%): PASSED (" + mod + ")");

        // 维度 2：比较运算符
        boolean lt = 5 < 10; count++;
        assert lt == true : "Less than failed";
        System.out.println("[Java] Comparison (<): PASSED");

        boolean gt = 10 > 5; count++;
        assert gt == true : "Greater than failed";
        System.out.println("[Java] Comparison (>): PASSED");

        boolean eq = 10 == 10; count++;
        assert eq == true : "Equality failed";
        System.out.println("[Java] Comparison (==): PASSED");

        boolean neq = 10 != 5; count++;
        assert neq == true : "Not equal failed";
        System.out.println("[Java] Comparison (!=): PASSED");

        // 维度 3：逻辑运算符
        boolean and = true && true; count++;
        assert and == true : "Logical AND failed";
        System.out.println("[Java] Logical (&&): PASSED");

        boolean or = false || true; count++;
        assert or == true : "Logical OR failed";
        System.out.println("[Java] Logical (||): PASSED");

        boolean not = !false; count++;
        assert not == true : "Logical NOT failed";
        System.out.println("[Java] Logical (!): PASSED");

        // 维度 4：位运算符
        int band = 0xFF & 0x0F; count++;
        assert band == 0x0F : "Bitwise AND failed, got " + band;
        System.out.println("[Java] Bitwise (&): PASSED (" + band + ")");

        int bor = 0xF0 | 0x0F; count++;
        assert bor == 0xFF : "Bitwise OR failed, got " + bor;
        System.out.println("[Java] Bitwise (|): PASSED (" + bor + ")");

        int bxor = 0xFF ^ 0x0F; count++;
        assert bxor == 0xF0 : "Bitwise XOR failed, got " + bxor;
        System.out.println("[Java] Bitwise (^): PASSED (" + bxor + ")");

        int lshift = 1 << 4; count++;
        assert lshift == 16 : "Left shift failed, got " + lshift;
        System.out.println("[Java] Bitwise (<<): PASSED (" + lshift + ")");

        int rshift = 16 >> 2; count++;
        assert rshift == 4 : "Right shift failed, got " + rshift;
        System.out.println("[Java] Bitwise (>>): PASSED (" + rshift + ")");

        // 维度 5：赋值运算符
        int a = 10; a += 5; count++;
        assert a == 15 : "Addition assignment failed, got " + a;
        System.out.println("[Java] Assignment (+=): PASSED (" + a + ")");

        int b = 20; b -= 8; count++;
        assert b == 12 : "Subtraction assignment failed, got " + b;
        System.out.println("[Java] Assignment (-=): PASSED (" + b + ")");

        int c = 6; c *= 7; count++;
        assert c == 42 : "Multiplication assignment failed, got " + c;
        System.out.println("[Java] Assignment (*=): PASSED (" + c + ")");

        int d = 100; d /= 4; count++;
        assert d == 25 : "Division assignment failed, got " + d;
        System.out.println("[Java] Assignment (/=): PASSED (" + d + ")");

        // 维度 6：三元运算符
        int ternary = (10 > 5) ? 100 : 200; count++;
        assert ternary == 100 : "Ternary operator failed, got " + ternary;
        System.out.println("[Java] Ternary (?:): PASSED (" + ternary + ")");

        // 维度 7：类型运算符
        String s = "hello";
        boolean isString = s instanceof String; count++;
        assert isString == true : "instanceof failed";
        System.out.println("[Java] Type (instanceof): PASSED");

        // 维度 8：字符串连接
        String concat = "Hello" + " " + "World"; count++;
        assert concat.equals("Hello World") : "String concatenation failed";
        System.out.println("[Java] String concatenation (+): PASSED");

        // 维度 9：复合表达式
        int complex = (10 + 20) * 3 - 15 / 5; count++;
        assert complex == 87 : "Complex expression failed, got " + complex;
        System.out.println("[Java] Complex expression: PASSED (" + complex + ")");

        // 维度 10：一元运算符
        int x = 5;
        int preInc = ++x; count++;
        assert preInc == 6 : "Pre-increment failed, got " + preInc;
        System.out.println("[Java] Unary (++): PASSED (" + preInc + ")");

        int y = 10;
        int postDec = y--; count++;
        assert postDec == 10 : "Post-decrement failed, got " + postDec;
        System.out.println("[Java] Unary (--): PASSED (" + postDec + ")");

        System.out.println("=== Java Operators Runtime Test PASSED ===");
        System.out.println("Total assertions passed: " + count);
    }
}
