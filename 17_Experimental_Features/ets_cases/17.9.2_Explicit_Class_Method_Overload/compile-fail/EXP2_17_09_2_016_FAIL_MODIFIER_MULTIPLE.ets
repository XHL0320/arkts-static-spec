/**
 * @id EXP2_17_09_2_016_FAIL_MODIFIER_MULTIPLE
 * @expect compile-fail
 * @section 17.9.2
 * @design MODIFIER_MULTIPLE
 * @note spec: missing CTE check
 */
class C016 {
    foo(x: int): void {}
    overload foo {foo}
    overload foo {foo}
}
