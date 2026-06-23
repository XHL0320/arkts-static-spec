/**
 * @id EXP_07_21_02_006_PASS_DOUBLE
 * @expect compile-pass
 * @section 7.21.2
 * @design 验证 double 类型后置递减编译通过。
 * @note 正向用例：double 后置递减编译通过
 */
function test_double_decrement(): void {
    let x: double = 3.14;
    x--;
}
