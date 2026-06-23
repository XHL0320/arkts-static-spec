/**
 * @id EXP_07_27_06_003_PASS_ENUM_BYTE_BASIC
 * @expect compile-pass
 * @section 7.27.6
 * @design 验证 byte 基类型枚举四个关系运算符编译通过
 * @note 正向用例：显式声明 byte 基类型的枚举成员使用关系运算符
 *       byte 类型在关系运算中提升为 int 后比较
 */
enum ByteEnum: byte { A = 0, B = 1, C = 3 }

function main(): void {
    let r1: boolean = ByteEnum.A < ByteEnum.B;   // 0 < 1 → true
    let r2: boolean = ByteEnum.A <= ByteEnum.B;  // 0 <= 1 → true
    let r3: boolean = ByteEnum.C > ByteEnum.A;   // 3 > 0 → true
    let r4: boolean = ByteEnum.B >= ByteEnum.A;  // 1 >= 0 → true
    let r5: boolean = ByteEnum.A <= ByteEnum.A;  // 0 <= 0 → true
    let r6: boolean = ByteEnum.C >= ByteEnum.C;  // 3 >= 3 → true

    console.log("PASS: " + r1 + " " + r2 + " " + r3 + " " + r4);
}
