/**
 * @id ANN_18_02_025_PASS_ON_INTERFACE_DECL
 * @expect compile-pass
 * @section 18.2
 * @design DECL
 * @note spec gap: newly added
 */
@interface Anno025 { s: string }
@Anno025({s: "iface"})
interface I025 {}
