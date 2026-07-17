/**
 * @id ANN_18_01_015_FAIL_DUPLICATE_NAME_WITH_ENUM
 * @expect compile-fail
 * @section 18.1
 * @design ENUM
 * @note spec gap: newly added
 */
@interface Anno015 {}
enum Anno015 {A, B}
