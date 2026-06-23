/**
 * @id EXP_07_21_02_001_PASS_INT
 * @expect compile-pass
 * @section 7.21.2
 * @design 验证 int 类型后置递减编译通过。
 * @note 正向用例：int 后置递减编译通过
 */
function test_int_decrement(): void {
    let x: int = 5;
    x--;
}
