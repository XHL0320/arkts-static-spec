/**
 * @id TYP_03_09_008_FAIL_UNION_WITH_TYPE_PARAM_TO_OBJECT
 * @expect compile-fail
 * @section 3.9
 * @design OBJECT
 * @note spec gap: newly added
 */
function f<T>(x: T): void { let o: Object = x as T | string }
