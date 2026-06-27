/*
 * @id NSM_13_06_015_FAIL_EXPORT_OVERLOAD_UNEXPORTED
 * @expect compile-fail
 * @section 13.6
 * @design export overload referencing unexported function
 * @note function foo is not exported, so export overload baz { foo, bar }
 *             is compile-time error
 */

function foo(): void {}
export function bar(): void {}

// Compile-time error: `foo` not exported
export overload baz { foo, bar }
