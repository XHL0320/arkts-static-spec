/**
 * @id STM_08_07_014_PASS_while_condition_bigint_extended
 * @expect compile-pass
 * @section 8.7
 * @design while 条件使用 bigint 类型（Extended Conditional Expression），验证 bigint 作为条件通过编译 — STATEMENTS.md §8.7
 * @note bigint 属于 Extended Conditional Expressions 类型，可隐式转换为 truthy/falsy 判断
 */
function testWhileConditionBigint(): void {
    let b: bigint = 42n;
    while (b) {
        b = b - 1n;
        if (b <= 40n) {
            break;
        }
    }
    let zero: bigint = 0n;
    while (zero) {
        // bigint 0n is falsy, body should not execute
        break;
    }
}
