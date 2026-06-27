/*
 * @id NSM_13_06_006_FAIL_EXPORT_NO_RETURN_TYPE
 * @expect compile-fail
 * @section 13.6
 * @design Exported functions without explicit return type → compile-time error
 */

export function bar() {} // Compile-time error, no return type
