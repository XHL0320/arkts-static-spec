/*
 * @id NSM_13_06_007_FAIL_EXPORT_UNEXPORTED_TYPE
 * @expect compile-fail
 * @section 13.6
 * @design Exported function/accessor/variable uses unexported entity
 *                   → compile-time error
 */

class A { constructor(a: A) {}; }

// The following declarations cause compile-time errors because 'A' is not exported
export let v: A
export function foo(p: A): A { return p; }
