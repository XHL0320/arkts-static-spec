/**
 * @id EXP_07_21_04_025_FAIL_FUNC_CALL
 * @expect compile-fail
 * @section 7.21.4
 * @design 验证 --func_call 前置递减报编译时错误。函数调用结果不是 LHS。
 * @note 反向用例：--函数调用结果应报编译时错误
 */
function getValue(): int {
    return 42;
}

function test_func_call_predec(): void {
    --getValue();
}
