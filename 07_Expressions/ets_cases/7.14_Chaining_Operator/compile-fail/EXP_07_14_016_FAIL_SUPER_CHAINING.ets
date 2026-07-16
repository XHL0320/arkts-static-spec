/**
 * @id EXP_07_14_016_FAIL_SUPER_CHAINING
 * @expect compile-fail
 * @section 7.14
 * @design super?. 表达式导致编译时错误
 * @note spec: super?. is handled as a compile-time error
 */
class Base016 {
    bar(): void {}
}
class Derived016 extends Base016 {
    foo(): void {
        let x = super?.bar()
    }
}
