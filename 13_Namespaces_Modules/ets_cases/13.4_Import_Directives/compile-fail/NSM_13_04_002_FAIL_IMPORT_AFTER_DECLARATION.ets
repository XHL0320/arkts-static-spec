/*
 * @id NSM_13_04_002_FAIL_IMPORT_AFTER_DECLARATION
 * @expect compile-fail
 * @section 13.4
 * @design A non-import directive, declaration, or statement preceding an
 *                   import directive causes a compile-time error
 */

let x: int = 1
import { console } from "@ohos.log"
// Compile-time error: import must precede other declarations
