/**
 * @id ANN_18_02_024_PASS_ON_TOP_LEVEL_FUNC
 * @expect compile-pass
 * @section 18.2
 * @design FUNC
 * @note spec gap: newly added
 */
@interface Anno024 { s: string }
@Anno024({s: "func"})
function foo(): void {}
