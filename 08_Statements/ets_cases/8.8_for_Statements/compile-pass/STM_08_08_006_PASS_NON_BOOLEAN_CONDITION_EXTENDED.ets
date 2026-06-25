/**
 * @id STM_08_08_006_PASS_NON_BOOLEAN_CONDITION_EXTENDED
 * @expect compile-pass
 * @section 8.8
 * @design forContinue 表达式类型为非 boolean（int 类型），当前版本因 Extended Conditional Expressions 允许编译通过（spec标注未来版本将废弃此特性）
 * @note 正向用例（Extended Conditional Expressions）：for (let i = 0; i; i++) 条件 i 为 int 而非 boolean
 */
function testNonBooleanCondition(): void {
    let sum: int = 0
    for (let i = 0; i; i++) {
        sum = sum + i
    }
}
