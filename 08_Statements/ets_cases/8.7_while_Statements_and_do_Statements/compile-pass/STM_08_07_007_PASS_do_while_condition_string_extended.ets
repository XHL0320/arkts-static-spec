/**
 * @id STM_08_07_007_FAIL_do_while_condition_string
 * @expect compile-pass
 * @section 8.7
 * @design do-while 条件使用字符串字面量(非 boolean)，期望编译报错
 * @note do-while 条件表达式必须为 boolean 类型，字符串字面量不符合要求
 */
function testDoWhileConditionString(): void {
    do {
        // loop body
    } while ("abc");
}
