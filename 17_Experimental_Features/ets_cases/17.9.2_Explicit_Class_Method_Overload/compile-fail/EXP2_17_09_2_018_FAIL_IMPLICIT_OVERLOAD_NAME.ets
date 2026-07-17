/**
 * @id EXP2_17_09_2_018_FAIL_IMPLICIT_OVERLOAD_NAME
 * @expect compile-fail
 * @section 17.9.2
 * @design IMPLICIT_OVERLOAD_NAME
 * @note spec: missing CTE check
 */
class C018 {
    foo(x: int): void {}
    foo(x: string): void {}
    overload foo {foo}
}
