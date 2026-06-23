/**
 * @id EXP_07_21_04_001_PASS_INT
 * @expect compile-pass
 * @section 7.21.4
 * @design 验证 int 类型前置递减编译通过。
 * @note 正向用例：int 前置递减
 */
function test_int_predec(): void {
    let x: int = 5;
    --x;
}
