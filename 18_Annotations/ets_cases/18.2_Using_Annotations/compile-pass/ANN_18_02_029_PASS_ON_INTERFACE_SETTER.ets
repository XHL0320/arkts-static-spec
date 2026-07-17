/**
 * @id ANN_18_02_029_PASS_ON_INTERFACE_SETTER
 * @expect compile-pass
 * @section 18.2
 * @design SETTER
 * @note spec gap: newly added
 */
@interface Anno029 { s: string }
interface I029 { @Anno029({s: "setter"}) set val(v: int) }
