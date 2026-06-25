/**
 * @id STM_08_07_008_PASS_while_condition_non_bool_extended
 * @expect compile-pass
 * @section 8.7
 * @design while 条件使用 number 类型变量(非 boolean)，期望编译报错
 * @note while 条件表达式必须为 boolean 或 Extended Conditional Expressions 类型，number 类型不符合要求
 */
function testWhileConditionNonBoolVar(): void {
    let x: number = 5.0;
    while (x) {
        x = x - 1.0;
    }
}
