/*
 * @id NSM_13_06_011_FAIL_EXPORT_UNEXPORTED_GENERIC
 * @expect compile-fail
 * @section 13.6
 * @design Exported generic entity uses unexported declaration as type
 *                   parameter constraint or default → compile-time error
 */

class Arg {}

// Compile-time error: type parameter constraint 'Arg' not exported
export function foo<T extends Arg>(): void {}
