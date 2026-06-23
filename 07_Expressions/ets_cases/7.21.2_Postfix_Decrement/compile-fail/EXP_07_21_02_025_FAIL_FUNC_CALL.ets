/**
 * @id EXP_07_21_02_025_FAIL_FUNC_CALL
 * @expect compile-fail
 * @section 7.21.2
 * @design 验证函数调用结果 -- 报编译时错误。
 *         函数调用结果不是 LHS，不可作为 -- 的操作数。
 * @note 反向用例：函数调用结果 -- 应报编译时错误
 */
function getValue(): int {
    return 42;
}

function test_func_call_decrement(): void {
    getValue()--;
}
