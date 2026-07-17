/**
 * @id ANN_18_01_016_FAIL_DUPLICATE_NAME_WITH_TYPE_ALIAS
 * @expect compile-fail
 * @section 18.1
 * @design ALIAS
 * @note spec gap: newly added
 */
@interface Anno016 {}
type Anno016 = int
