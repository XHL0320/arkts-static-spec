/*
 * @id NSM_13_02_003_FAIL_MODULE_NO_DECLARE
 * @expect compile-fail
 * @section 13.2
 * @design If a module header has the declare modifier, then the whole
 *                   module is ambient. Otherwise a compile-time error occurs
 *                   (when non-ambient content exists with declare module header).
 */

declare module "MixedModule"

function realFoo(): void {}
// Compile-time error: declare module but non-ambient declarations
