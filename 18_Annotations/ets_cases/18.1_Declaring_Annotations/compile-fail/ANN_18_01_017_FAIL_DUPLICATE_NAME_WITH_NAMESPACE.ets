/**
 * @id ANN_18_01_017_FAIL_DUPLICATE_NAME_WITH_NAMESPACE
 * @expect compile-fail
 * @section 18.1
 * @design NAMESPACE
 * @note spec gap: newly added
 */
@interface Anno017 {}
namespace Anno017 { export function f(): void {} }
