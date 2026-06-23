/**
 * @id EXP_07_27_06_004_PASS_ENUM_STRING_BASIC
 * @expect compile-pass
 * @section 7.27.6
 * @design 验证 string 基类型枚举四个关系运算符编译通过
 * @note 正向用例：string 基类型枚举成员使用 <, <=, >, >= 运算符
 *       基于字符串字典序比较语义
 */
enum StrEnum: string { A = "apple", B = "banana", C = "cherry" }

function main(): void {
    let r1: boolean = StrEnum.A < StrEnum.B;   // "apple" < "banana" → true
    let r2: boolean = StrEnum.A <= StrEnum.A;  // "apple" <= "apple" → true
    let r3: boolean = StrEnum.C > StrEnum.A;   // "cherry" > "apple" → true
    let r4: boolean = StrEnum.B >= StrEnum.A;  // "banana" >= "apple" → true
    let r5: boolean = StrEnum.A <= StrEnum.B;  // "apple" <= "banana" → true
    let r6: boolean = StrEnum.B >= StrEnum.B;  // "banana" >= "banana" → true

    console.log("PASS: " + r1 + " " + r2 + " " + r3 + " " + r4);
}
