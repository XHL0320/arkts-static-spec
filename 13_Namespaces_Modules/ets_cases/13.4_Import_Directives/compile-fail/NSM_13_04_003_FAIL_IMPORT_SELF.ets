/*
 * @id NSM_13_04_003_FAIL_IMPORT_SELF
 * @expect compile-fail
 * @section 13.4
 * @design Module imports itself directly, and importPath refers to a file
 *                   in which the current module is stored → compile-time error
 */

import { main } from "./NSM_13_04_003_FAIL_IMPORT_SELF.ets"
// Compile-time error: module imports itself
