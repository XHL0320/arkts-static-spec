/**
 * @id ANN_18_04_008_FAIL_AMBIENT_NO_IMPL
 * @expect compile-fail
 * @section 18.4
 * @design IMPL
 * @note spec gap: newly added
 */
declare @interface Anno008 { s: string }
@Anno008({s:"test"})
class C008 {}
