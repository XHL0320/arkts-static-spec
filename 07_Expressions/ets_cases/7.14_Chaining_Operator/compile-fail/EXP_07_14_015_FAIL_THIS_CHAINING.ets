/**
 * @id EXP_07_14_015_FAIL_THIS_CHAINING
 * @expect compile-fail
 * @section 7.14
 * @design Chaining_Operator中int+boolean关系运算类型不匹配
 * @note 对抗用例: Chaining_Operator中int与boolean关系运算应被编译器拒绝
 */
class C015 {
    foo(): void {
        let x = this?.toString()
    }
}
