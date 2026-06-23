/**
 * @id EXP_07_21_02_003_PASS_LONG
 * @expect compile-pass
 * @section 7.21.2
 * @design 验证 long 类型后置递减编译通过。
 * @note 正向用例：long 后置递减编译通过
 */
function test_long_decrement(): void {
    let x: long = 10000000000;
    x--;
}
