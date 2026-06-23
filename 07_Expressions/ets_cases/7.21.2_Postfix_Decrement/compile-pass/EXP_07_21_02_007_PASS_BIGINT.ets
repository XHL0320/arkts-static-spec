/**
 * @id EXP_07_21_02_007_PASS_BIGINT
 * @expect compile-pass
 * @section 7.21.2
 * @design 验证 bigint 类型后置递减编译通过。
 * @note 正向用例：bigint 后置递减编译通过
 */
function test_bigint_decrement(): void {
    let x: bigint = 1n;
    x--;
}
