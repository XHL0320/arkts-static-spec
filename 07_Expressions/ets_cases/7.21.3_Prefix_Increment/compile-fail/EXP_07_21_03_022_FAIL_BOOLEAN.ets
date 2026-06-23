/**
 * @id EXP_07_21_03_022_FAIL_BOOLEAN
 * @expect compile-fail
 * @section 7.21.3
 * @design 验证 boolean 类型前置递增报编译时错误。
 * @note 反向用例：boolean ++ 应报编译时错误
 */
function test_boolean_preinc(): void {
    let b: boolean = true;
    ++b;
}
