/**
 * @id EXP_07_21_02_022_FAIL_BOOLEAN
 * @expect compile-fail
 * @section 7.21.2
 * @design 验证 boolean 类型后置递减报编译时错误。
 * @note 反向用例：boolean -- 应报编译时错误
 */
function test_boolean_decrement(): void {
    let b: boolean = true;
    b--;
}
