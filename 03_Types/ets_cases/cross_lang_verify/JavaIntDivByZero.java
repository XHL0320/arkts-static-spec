// Java 整数除零 10 场景验证
// 对应 ArkTS TYP_03_06_02_022~029 + 028（模块级 const）

public class JavaIntDivByZero {

    // 场景 s1: 字面量除零
    static void s1_local_literal() {
        try {
            int c = 10 / 0;
            System.out.println("s1: " + c);
        } catch (ArithmeticException e) {
            System.out.println("s1: ArithmeticException - " + e.getMessage());
        }
    }

    // 场景 s2: let 变量除零
    static void s2_local_variable() {
        try {
            int a = 0;
            int c = 10 / a;
            System.out.println("s2: " + c);
        } catch (ArithmeticException e) {
            System.out.println("s2: ArithmeticException - " + e.getMessage());
        }
    }

    // 场景 s3: 函数返回字面量除零
    static int s3_helper() {
        return 10 / 0;
    }
    static void s3_function_literal() {
        try {
            int c = s3_helper();
            System.out.println("s3: " + c);
        } catch (ArithmeticException e) {
            System.out.println("s3: ArithmeticException - " + e.getMessage());
        }
    }

    // 场景 s4: 函数内 final 常量（局部）
    static void s4_local_final() {
        try {
            final int a = 0;
            int c = 10 / a;
            System.out.println("s4: " + c);
        } catch (ArithmeticException e) {
            System.out.println("s4: ArithmeticException - " + e.getMessage());
        }
    }

    // 场景 s5: 模块级（类静态）final 常量
    static final int MODULE_A = 0;
    static void s5_module_final() {
        try {
            int c = 10 / MODULE_A;
            System.out.println("s5: " + c);
        } catch (ArithmeticException e) {
            System.out.println("s5: ArithmeticException - " + e.getMessage());
        }
    }

    // 场景 s6: 常量表达式 (1-1)
    static void s6_constant_expr() {
        try {
            int c = 10 / (1 - 1);
            System.out.println("s6: " + c);
        } catch (ArithmeticException e) {
            System.out.println("s6: ArithmeticException - " + e.getMessage());
        }
    }

    // 场景 s7: 取模零
    static void s7_mod_zero() {
        try {
            int c = 10 % 0;
            System.out.println("s7: " + c);
        } catch (ArithmeticException e) {
            System.out.println("s7: ArithmeticException - " + e.getMessage());
        }
    }

    // 场景 s8: long 除零
    static void s8_long_zero() {
        try {
            long a = 10L;
            long b = 0L;
            long c = a / b;
            System.out.println("s8: " + c);
        } catch (ArithmeticException e) {
            System.out.println("s8: ArithmeticException - " + e.getMessage());
        }
    }

    // 场景 s9: BigInteger 除零（Java 无 bigint 字面量）
    static void s9_bigint_zero() {
        try {
            java.math.BigInteger a = java.math.BigInteger.TEN;
            java.math.BigInteger b = java.math.BigInteger.ZERO;
            java.math.BigInteger c = a.divide(b);
            System.out.println("s9: " + c);
        } catch (ArithmeticException e) {
            System.out.println("s9: ArithmeticException - " + e.getMessage());
        }
    }

    // 场景 s10: byte 除零
    static void s10_byte_zero() {
        try {
            byte a = 10;
            byte b = 0;
            int c = a / b;
            System.out.println("s10: " + c);
        } catch (ArithmeticException e) {
            System.out.println("s10: ArithmeticException - " + e.getMessage());
        }
    }

    public static void main(String[] args) {
        System.out.println("===== Java Integer Division by Zero =====");
        s1_local_literal();
        s2_local_variable();
        s3_function_literal();
        s4_local_final();
        s5_module_final();
        s6_constant_expr();
        s7_mod_zero();
        s8_long_zero();
        s9_bigint_zero();
        s10_byte_zero();
    }
}