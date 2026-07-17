/**
 * @id EXP2_17_14_011_FAIL_NON_RECEIVER_PARAM
 * @expect compile-fail
 * @section 17.14
 * @design NON_RECEIVER_PARAM
 * @note spec: missing CTE check
 */
function foo(cb: () => void, x: int): void {}
function test(): void { foo(1) {} }

