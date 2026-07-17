/**
 * @id EXP2_17_9_013_FAIL_OVERLOAD_IMPLICIT_NAME
 * @expect compile-fail
 * @section 17.9
 * @design OVERLOAD_IMPLICIT_NAME
 * @note spec: missing CTE check
 */
function foo(x: int): void {}
function foo(x: string): void {}
overload foo {foo}
