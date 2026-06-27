/*
 * @id NSM_13_07_4_004_FAIL_RE_EXPORT_NOT_DISTINGUISHABLE
 * @expect compile-fail
 * @section 13.7.4
 * @design If re-exported declarations are not distinguishable within
 *                   the scope of the current module → compile-time error
 *                   (same name exported from two different modules)
 */

export class A {}

// Another hypothetical file also exports class A
export * from "./file1_with_A"
export * from "./file2_with_A"
// Compile-time error: entity named 'A' is already exported
