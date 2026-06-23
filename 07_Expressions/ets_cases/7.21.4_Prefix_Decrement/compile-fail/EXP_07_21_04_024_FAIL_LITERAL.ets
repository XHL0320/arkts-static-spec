/**
 * @id EXP_07_21_04_024_FAIL_LITERAL
 * @expect compile-fail
 * @section 7.21.4
 * @design 验证 --5 字面量前置递减报编译时错误。字面量不是 LHS。
 * @note 反向用例：--字面量应报编译时错误
 */
function test_literal_predec(): void {
    --5;
}
