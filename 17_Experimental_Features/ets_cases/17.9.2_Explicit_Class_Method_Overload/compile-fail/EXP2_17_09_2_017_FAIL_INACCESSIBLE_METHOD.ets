/**
 * @id EXP2_17_09_2_017_FAIL_INACCESSIBLE_METHOD
 * @expect compile-fail
 * @section 17.9.2
 * @design INACCESSIBLE_METHOD
 * @note spec: missing CTE check
 */
class C017 {
    private foo(x: int): void {}
}
class D017 extends C017 {
    foo(x: int): void {}
    overload foo {foo}
}
