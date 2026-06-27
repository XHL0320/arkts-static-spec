/*
 * @id NSM_13_06_013_FAIL_EXPORT_TYPE_ALIAS_UNEXPORTED
 * @expect compile-fail
 * @section 13.6
 * @design export type alias referencing unexported type
 * @note class C is not exported, so export type A = C is error
 */

class C {}

// Compile-time error: 'C' must be exported
export type A = C
