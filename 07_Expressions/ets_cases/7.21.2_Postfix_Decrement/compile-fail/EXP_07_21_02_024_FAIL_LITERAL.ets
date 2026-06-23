/**
 * @id EXP_07_21_02_024_FAIL_LITERAL
 * @expect compile-fail
 * @section 7.21.2
 * @design 验证字面量 5-- 报编译时错误。
 *         字面量不是 LHS，不可作为 -- 的操作数。
 * @note 反向用例：字面量 -- 应报编译时错误
 */
function test_literal_decrement(): void {
    5--;
}
