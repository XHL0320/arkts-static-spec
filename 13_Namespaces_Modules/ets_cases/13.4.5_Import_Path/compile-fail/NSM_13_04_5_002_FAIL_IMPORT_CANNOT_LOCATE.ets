/*
 * @id NSM_13_04_5_002_FAIL_IMPORT_CANNOT_LOCATE
 * @expect compile-fail
 * @section 13.4.5
 * @design If the compiler cannot locate a module source definitely,
 *                   then a compile-time error occurs
 */

import { nonexistent } from "./this_module_does_not_exist"
// Compile-time error: compiler cannot locate module
