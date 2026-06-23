/**
 * @id EXP_07_21_04_022_FAIL_BOOLEAN
 * @expect compile-fail
 * @section 7.21.4
 * @design 验证 boolean 类型前置递减报编译时错误。
 * @note 反向用例：--boolean 应报编译时错误
 */
function test_boolean_predec(): void {
    let b: boolean = true;
    --b;
}
