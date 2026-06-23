/**
 * @id EXP_07_26_022_FAIL_BIGINT_NUMERIC_MIXED
 * @expect compile-fail
 * @section 7.26
 * @design bigint 与数值类型混合用于移位运算应产生编译时错误
 * @note 反向用例：验证 bigint << int 等混合类型移位被编译器拒绝
 *       Spec 规定：compile-time error if one operand is bigint and the other is numeric
 */
function main(): void {
    let a: bigint = 16n;
    let b: int = 2;
    let c: bigint = a << b;
    console.log("result: " + c);
}
