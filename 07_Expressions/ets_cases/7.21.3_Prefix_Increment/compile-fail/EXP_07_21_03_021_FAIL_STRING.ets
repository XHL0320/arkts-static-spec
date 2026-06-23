/**
 * @id EXP_07_21_03_021_FAIL_STRING
 * @expect compile-fail
 * @section 7.21.3
 * @design 验证 string 类型前置递增报编译时错误。
 * @note 反向用例：string ++ 应报编译时错误
 */
function test_string_preinc(): void {
    let s: string = "hello";
    ++s;
}
