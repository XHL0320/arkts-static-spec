/**
 * @id ANN_18_02_026_PASS_ON_ENUM_DECL
 * @expect compile-pass
 * @section 18.2
 * @design DECL
 * @note spec gap: newly added
 */
@interface Anno026 { s: string }
@Anno026({s: "enum"})
enum E026 {A, B}
