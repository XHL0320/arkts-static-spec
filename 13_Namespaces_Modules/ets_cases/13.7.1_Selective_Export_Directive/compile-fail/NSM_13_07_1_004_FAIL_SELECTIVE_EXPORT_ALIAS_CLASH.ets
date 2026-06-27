/*
 * @id NSM_13_07_1_004_FAIL_SELECTIVE_EXPORT_ALIAS_CLASH
 * @expect compile-fail
 * @section 13.7.1
 * @design selective export alias clashes with existing exported name
 * @note export function foo() already defines 'foo' as exported name,
 *             then export {bar as foo} causes name clash → compile-time error
 */

export function foo(): void {}
function bar(): void {}

// Compile-time error: entity named 'foo' is already exported
export { bar as foo }
