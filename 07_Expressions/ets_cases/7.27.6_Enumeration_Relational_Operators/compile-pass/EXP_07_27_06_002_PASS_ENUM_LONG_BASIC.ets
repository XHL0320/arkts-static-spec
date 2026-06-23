/**
 * @id EXP_07_27_06_002_PASS_ENUM_LONG_BASIC
 * @expect compile-pass
 * @section 7.27.6
 * @design 验证 long 基类型枚举四个关系运算符编译通过
 * @note 正向用例：显式声明 long 基类型的枚举成员使用关系运算符
 *       基于 long 数值比较语义
 */
enum LongEnum: long { A = 10, B = 20, C = 30 }

function main(): void {
    let r1: boolean = LongEnum.A < LongEnum.B;   // 10 < 20 → true
    let r2: boolean = LongEnum.A <= LongEnum.B;  // 10 <= 20 → true
    let r3: boolean = LongEnum.C > LongEnum.A;   // 30 > 10 → true
    let r4: boolean = LongEnum.B >= LongEnum.A;  // 20 >= 10 → true
    let r5: boolean = LongEnum.A <= LongEnum.A;  // 10 <= 10 → true
    let r6: boolean = LongEnum.C >= LongEnum.C;  // 30 >= 30 → true
    let r7: boolean = LongEnum.B < LongEnum.C;   // 20 < 30 → true
    let r8: boolean = LongEnum.C > LongEnum.B;   // 30 > 20 → true

    console.log("PASS: " + r1 + " " + r2 + " " + r3 + " " + r4);
}
