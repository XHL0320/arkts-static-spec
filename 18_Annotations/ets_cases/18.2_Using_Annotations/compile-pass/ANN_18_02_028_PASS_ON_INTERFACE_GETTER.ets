/**
 * @id ANN_18_02_028_PASS_ON_INTERFACE_GETTER
 * @expect compile-pass
 * @section 18.2
 * @design GETTER
 * @note spec gap: newly added
 */
@interface Anno028 { s: string }
interface I028 { @Anno028({s: "getter"}) get val(): int }
