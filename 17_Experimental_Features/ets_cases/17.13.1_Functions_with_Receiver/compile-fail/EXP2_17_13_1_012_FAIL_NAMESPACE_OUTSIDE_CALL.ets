/**
 * @id EXP2_17_13_1_012_FAIL_NAMESPACE_OUTSIDE_CALL
 * @expect compile-fail
 * @section 17.13.1
 * @design NAMESPACE_OUTSIDE_CALL
 * @note spec: missing CTE check
 */
namespace NS { function foo(this: int): void {} }
function test(): void { let x: int = 1; x.NS.foo() }

