/**
 * @id ANN_18_02_030_PASS_ON_TYPE_USAGE
 * @expect compile-pass
 * @section 18.2
 * @design USAGE
 * @note spec gap: newly added
 */
@interface Anno030 { s: string }
let x030: @Anno030({s:"type"}) int = 1
