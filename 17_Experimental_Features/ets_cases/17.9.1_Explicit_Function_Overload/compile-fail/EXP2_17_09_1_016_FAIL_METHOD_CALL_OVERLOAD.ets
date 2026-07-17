/**
 * @id EXP2_17_09_1_016_FAIL_METHOD_CALL_OVERLOAD
 * @expect compile-fail
 * @section 17.9.1
 * @design METHOD_CALL_OVERLOAD
 * @note spec: missing CTE check
 */
function foo(x: int): void {}
function foo(x: string): void {}
overload foo {foo}
class A {
    bar(): void { this.foo(1) }
}
