/**
 * @id EXP_07_29_01_002_PASS_LONG_BITWISE_BASIC
 * @expect compile-pass
 * @section 7.29.1
 * @design long 类型三个位运算符（&, ^, |）的基本编译通过验证
 * @note 正向用例：验证 long 类型在按位与、异或、或运算中均可编译通过
 *       包括：变量运算、字面量运算
 */
function main(): void {
    let a: long = 60000;
    let b: long = 13000;

    // 按位与 &
    let andResult: long = a & b;

    // 按位异或 ^
    let xorResult: long = a ^ b;

    // 按位或 |
    let orResult: long = a | b;

    // 字面量位运算
    let lAnd: long = 5 & 3;
    let lXor: long = 5 ^ 3;
    let lOr: long = 5 | 3;

    console.log("long & result: " + andResult);
    console.log("long ^ result: " + xorResult);
    console.log("long | result: " + orResult);
}
