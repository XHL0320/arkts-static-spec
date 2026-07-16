/**
 * @id EXP_07_14_015_FAIL_THIS_CHAINING
 * @expect compile-fail
 * @section 7.14
 * @design this?. 表达式导致编译时错误
 * @note spec: this?. is handled as a compile-time error
 */
class C015 {
    foo(): void {
        let x = this?.toString()
    }
}
