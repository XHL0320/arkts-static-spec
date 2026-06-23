/**
 * @id EXP_07_21_01_021_FAIL_STRING
 * @expect compile-fail
 * @section 7.21.1
 * @design 验证 string 类型后置递增报编译时错误。
 *         string 不是数值类型或 bigint，不可 ++。
 * @note 反向用例：string ++ 应报编译时错误
 */
function test_string_increment(): void {
    let s: string = "hello";
    s++;
}
