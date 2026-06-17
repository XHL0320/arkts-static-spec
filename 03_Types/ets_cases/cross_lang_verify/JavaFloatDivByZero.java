// Java 浮点除零 10 场景验证
// 对应 ArkTS TYP_03_06_03_021~030

public class JavaFloatDivByZero {

    // f1: 字面量 5.0/0.0
    static void f1_pos_zero() {
        double c = 5.0 / 0.0;
        System.out.println("f1: " + c);
    }

    // f2: -5.0/0.0
    static void f2_neg_zero() {
        double c = -5.0 / 0.0;
        System.out.println("f2: " + c);
    }

    // f3: 0.0/0.0
    static void f3_zero_zero() {
        double c = 0.0 / 0.0;
        System.out.println("f3: " + c);
    }

    // f4: let 变量 0.0
    static void f4_let_zero() {
        double a = 0.0;
        double c = 5.0 / a;
        System.out.println("f4: " + c);
    }

    // f5: 函数内 final 常量 0.0
    static void f5_local_final() {
        final double a = 0.0;
        double c = 5.0 / a;
        System.out.println("f5: " + c);
    }

    // f6: 模块级 final 0.0
    static final double MODULE_ZERO = 0.0;
    static void f6_module_final() {
        double c = 5.0 / MODULE_ZERO;
        System.out.println("f6: " + c);
    }

    // f7: 常量表达式 (1.0 - 1.0)
    static void f7_constant_expr() {
        double c = 5.0 / (1.0 - 1.0);
        System.out.println("f7: " + c);
    }

    // f8: 取模零
    static void f8_mod_zero() {
        double c = 5.0 % 0.0;
        System.out.println("f8: " + c);
    }

    // f9: float (32 位) 字面量除零
    static void f9_float32_zero() {
        float c = 5.0f / 0.0f;
        System.out.println("f9: " + c);
    }

    // f10: 整数/浮点零 (int / 0.0)
    static void f10_int_div_zero_double() {
        double c = 10 / 0.0;
        System.out.println("f10: " + c);
    }

    public static void main(String[] args) {
        System.out.println("===== Java Floating-Point Division by Zero =====");
        f1_pos_zero();
        f2_neg_zero();
        f3_zero_zero();
        f4_let_zero();
        f5_local_final();
        f6_module_final();
        f7_constant_expr();
        f8_mod_zero();
        f9_float32_zero();
        f10_int_div_zero_double();
    }
}