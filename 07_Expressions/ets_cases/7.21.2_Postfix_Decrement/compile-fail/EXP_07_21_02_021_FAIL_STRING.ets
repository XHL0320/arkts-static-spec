/**
 * @id EXP_07_21_02_021_FAIL_STRING
 * @expect compile-fail
 * @section 7.21.2
 * @design 验证 string 类型后置递减报编译时错误。
 * @note 反向用例：string -- 应报编译时错误
 */
function test_string_decrement(): void {
    let s: string = "hello";
    s--;
}
