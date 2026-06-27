/*
 * @id NSM_13_04_4_003_FAIL_IMPORT_TYPE_BINDING_TYPE
 * @expect compile-fail
 * @section 13.4.4
 * @design import type is used while type is also used by one of bindings
 *                   → compile-time error
 */

import type { type Class2 } from "./types_module.ets"
// Compile-time error: import type + binding type conflict
