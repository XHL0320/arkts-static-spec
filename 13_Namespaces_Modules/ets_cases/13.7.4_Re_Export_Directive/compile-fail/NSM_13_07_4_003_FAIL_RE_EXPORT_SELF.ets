/*
 * @id NSM_13_07_4_003_FAIL_RE_EXPORT_SELF
 * @expect compile-fail
 * @section 13.7.4
 * @design An importPath cannot refer to the file the current module is
 *                   stored in → compile-time error
 */

export * from "./NSM_13_07_4_003_FAIL_RE_EXPORT_SELF.ets"
// Compile-time error: re-export refers to current file
