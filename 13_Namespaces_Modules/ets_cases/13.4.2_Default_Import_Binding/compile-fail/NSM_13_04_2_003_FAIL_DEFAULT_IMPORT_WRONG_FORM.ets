/*
 * @id NSM_13_04_2_003_FAIL_DEFAULT_IMPORT_WRONG_FORM
 * @expect compile-fail
 * @section 13.4.2
 * @design A compile-time error occurs if another form of import is used
 *                   to import an entity initially exported as default
 *                   (e.g., * as form cannot be used for default export)
 */

import * as a from "./module_with_default_export.ets"
// Compile-time error: such form of import cannot be used for the default export
