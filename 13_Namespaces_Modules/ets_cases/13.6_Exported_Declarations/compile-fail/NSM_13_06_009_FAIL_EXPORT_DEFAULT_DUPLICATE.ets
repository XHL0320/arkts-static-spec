/*
 * @id NSM_13_06_009_FAIL_EXPORT_DEFAULT_DUPLICATE
 * @expect compile-fail
 * @section 13.6
 * @design A compile-time error occurs if more than one top-level
 *                   declaration is marked as default
 */

export default let PI: number = 3.14
export default class MyClass {} // Compile-time error: multiple default exports
