/**
 * @id STM_08_07_006_PASS_while_condition_number_extended
 * @expect compile-pass
 * @section 8.7
 * @design while 条件使用数字字面量(非 boolean)，期望编译报错
 * @note while 条件表达式必须为 boolean 类型，数字字面量 '1' 不符合要求
 */
function testWhileConditionNumber(): void {
    while (1) {
        // number literal as condition - compile error expected
    }
}
