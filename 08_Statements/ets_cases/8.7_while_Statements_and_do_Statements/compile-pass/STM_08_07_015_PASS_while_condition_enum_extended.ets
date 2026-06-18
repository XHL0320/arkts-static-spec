/**
 * @id STM_08_07_015_PASS_while_condition_enum_extended
 * @expect compile-pass
 * @section 8.7
 * @design while 条件使用 enum 类型（Extended Conditional Expression），验证枚举值作为条件通过编译 — STATEMENTS.md §8.7
 * @note enum 属于 Extended Conditional Expressions 类型，可隐式转换为 truthy/falsy 判断
 */
enum Color {
    Red,
    Green,
    Blue
}

function testWhileConditionEnum(): void {
    let c: Color = Color.Green;
    while (c) {
        c = Color.Red;
        if (c == Color.Red) {
            break;
        }
    }
    let defaultColor: Color = Color.Red;
    while (defaultColor) {
        // Color.Red (value 0) is falsy, body should not execute
        break;
    }
}
