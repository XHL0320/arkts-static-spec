/**
 * @id EXP_07_29_01_001_PASS_INT_BITWISE_BASIC
 * @expect compile-pass
 * @section 7.29.1
 * @design int 类型三个位运算符（&, ^, |）的基本编译通过验证
 * @note 正向用例：验证 int 类型在按位与、异或、或运算中均可编译通过
 *       包括：变量运算、字面量运算
 */
function main(): void {
    let a: int = 60;
    let b: int = 13;

    // 按位与 &
    let andResult: int = a & b;

    // 按位异或 ^
    let xorResult: int = a ^ b;

    // 按位或 |
    let orResult: int = a | b;

    // 字面量位运算
    let lAnd: int = 5 & 3;
    let lXor: int = 5 ^ 3;
    let lOr: int = 5 | 3;

    console.log("int & result: " + andResult);
    console.log("int ^ result: " + xorResult);
    console.log("int | result: " + orResult);
}
