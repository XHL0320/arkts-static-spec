/**
 * @id STM_08_07_013_PASS_while_complex_logical_condition
 * @expect compile-pass
 * @section 8.7
 * @design while 条件表达式使用复杂逻辑表达式 (&&, ||, !)，验证复合条件通过编译 — STATEMENTS.md §8.7
 * @note while 的 expression 可以是任意返回 boolean 的复合逻辑表达式
 */
function testWhileComplexLogical(): void {
    let a: int = 0;
    let b: int = 10;
    let flag: boolean = false;
    // AND condition
    while (a < 5 && b > 5) {
        a = a + 1;
        b = b - 1;
    }
    // OR condition
    while (a < 2 || flag) {
        a = a + 1;
        flag = !flag;
    }
    // NOT condition
    while (!flag) {
        flag = true;
    }
    // Complex nested condition with parentheses
    while ((a < 10 && b > 0) || !flag) {
        a = a + 1;
        b = b - 1;
        if (a >= 10) {
            break;
        }
    }
}
