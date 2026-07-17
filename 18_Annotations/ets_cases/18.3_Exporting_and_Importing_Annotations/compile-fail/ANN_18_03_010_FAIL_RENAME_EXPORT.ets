/**
 * @id ANN_18_03_010_FAIL_RENAME_EXPORT
 * @expect compile-fail
 * @section 18.3
 * @design EXPORT
 * @note spec gap: newly added
 */
@interface Anno010 {}
export {Anno010 as RenamedAnno}
