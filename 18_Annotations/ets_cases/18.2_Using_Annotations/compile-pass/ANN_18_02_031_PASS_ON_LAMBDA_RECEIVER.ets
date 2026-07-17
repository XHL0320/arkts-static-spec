/**
 * @id ANN_18_02_031_PASS_ON_LAMBDA_RECEIVER
 * @expect compile-pass
 * @section 18.2
 * @design RECEIVER
 * @note spec gap: newly added
 */
@interface Anno031 { s: string }
function foo(cb: (this: int) => void): void {}
