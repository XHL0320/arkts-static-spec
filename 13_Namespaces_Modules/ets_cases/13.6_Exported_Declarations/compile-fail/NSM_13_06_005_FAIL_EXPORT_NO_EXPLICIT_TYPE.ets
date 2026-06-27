/*
 * @id NSM_13_06_005_FAIL_EXPORT_NO_EXPLICIT_TYPE
 * @expect compile-fail
 * @section 13.6
 * @design Exported constants and variables without explicit types
 *                   → compile-time error
 */

export let b = 1 // Compile-time error - no explicit type
export const d = 1 // Compile-time error - no explicit type
