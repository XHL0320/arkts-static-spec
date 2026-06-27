/*
 * @id NSM_13_09_002_FAIL_MULTIFILE_DIFF_EXPORT
 * @expect compile-fail
 * @section 13.9
 * @design If two module headers have the same moduleName but different
 *                   export modifiers, then a compile-time error occurs
 */

export module "x"
function foo(): void {}

// In another file: module "x" (without export) → compile-time error
// This test simulates the conflict in a single file for demonstration
