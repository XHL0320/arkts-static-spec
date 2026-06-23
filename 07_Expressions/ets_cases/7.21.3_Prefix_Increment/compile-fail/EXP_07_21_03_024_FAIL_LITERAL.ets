/**
 * @id EXP_07_21_03_024_FAIL_LITERAL
 * @expect compile-fail
 * @section 7.21.3
 * @design 验证 ++5 字面量前置递增报编译时错误。
 *         字面量不是 LHS，不可作为 ++ 的操作数。
 * @note 反向用例：++字面量应报编译时错误
 */
function test_literal_preinc(): void {
    ++5;
}
