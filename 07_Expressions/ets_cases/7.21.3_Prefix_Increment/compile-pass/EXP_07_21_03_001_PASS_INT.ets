/**
 * @id EXP_07_21_03_001_PASS_INT
 * @expect compile-pass
 * @section 7.21.3
 * @design 验证 int 类型前置递增编译通过。
 * @note 正向用例：int 前置递增
 */
function test_int_preinc(): void {
    let x: int = 5;
    ++x;
}
