/**
 * @id ANN_18_02_027_PASS_ON_TYPE_ALIAS
 * @expect compile-pass
 * @section 18.2
 * @design ALIAS
 * @note spec gap: newly added
 */
@interface Anno027 { s: string }
@Anno027({s: "alias"})
type T027 = int
