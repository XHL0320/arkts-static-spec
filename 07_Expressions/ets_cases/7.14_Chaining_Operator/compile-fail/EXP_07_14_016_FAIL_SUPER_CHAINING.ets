/**
 * @id EXP_07_14_016_FAIL_SUPER_CHAINING
 * @expect compile-fail
 * @section 7.14
 * @design Chaining_Operator中int+boolean关系运算类型不匹配
 * @note 对抗用例: Chaining_Operator中int与boolean关系运算应被编译器拒绝
 */
class Base016 {
    bar(): void {}
}
class Derived016 extends Base016 {
    foo(): void {
        let x = super?.bar()
    }
}
