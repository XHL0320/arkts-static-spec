/*
 * @id NSM_13_06_008_FAIL_EXPORT_NAME_DUPLICATE
 * @expect compile-fail
 * @section 13.6
 * @design If an export directive uses selectiveBindings or bindingAlias
 *                   to give a new name that clashes with another exported declaration
 *                   → compile-time error
 */

export function foo(): void {}

function bar(): void {}

export { bar as foo } // Compile-time error: entity named 'foo' is already exported
