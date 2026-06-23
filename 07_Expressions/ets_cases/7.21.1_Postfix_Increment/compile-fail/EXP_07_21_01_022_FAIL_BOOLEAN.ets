/**
 * @id EXP_07_21_01_022_FAIL_BOOLEAN
 * @expect compile-fail
 * @section 7.21.1
 * @design 验证 boolean 类型后置递增报编译时错误。
 *         boolean 不是数值类型或 bigint，不可 ++。
 * @note 反向用例：boolean ++ 应报编译时错误
 */
function test_boolean_increment(): void {
    let b: boolean = true;
    b++;
}
