/*
 * @id NSM_13_04_004_FAIL_IMPORT_TYPE_BINDING_TYPE
 * @expect compile-fail
 * @section 13.4
 * @design A compile-time error occurs if import type is used while type
 *                   is also used by one of bindings
 */

import type { type X } from "some_module"
// Compile-time error: import type + binding type conflict
