/**
 * @id EXP_07_21_01_024_FAIL_LITERAL
 * @expect compile-fail
 * @section 7.21.1
 * @design 验证字面量 5++ 报编译时错误。
 *         字面量不是 LHS（left-hand-side expression），不可作为 ++ 的操作数。
 * @note 反向用例：字面量 ++ 应报编译时错误
 */
function test_literal_increment(): void {
    5++;
}
