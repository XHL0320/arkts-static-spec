/**
 * @id EXP_07_29_01_006_PASS_BIGINT_BITWISE
 * @expect compile-pass
 * @section 7.29.1
 * @design bigint 类型三个位运算符（&, ^, |）的编译通过验证
 * @note 正向用例：验证两个 bigint 操作数在 &, ^, | 运算中编译通过（无需转换）
 */
function main(): void {
    let a: bigint = 60n;
    let b: bigint = 13n;

    // bigint & bigint
    let andResult: bigint = a & b;

    // bigint ^ bigint
    let xorResult: bigint = a ^ b;

    // bigint | bigint
    let orResult: bigint = a | b;

    // 字面量 bigint 位运算
    let lAnd: bigint = 5n & 3n;
    let lXor: bigint = 5n ^ 3n;
    let lOr: bigint = 5n | 3n;

    console.log("bigint & result: " + andResult);
    console.log("bigint ^ result: " + xorResult);
    console.log("bigint | result: " + orResult);
}
