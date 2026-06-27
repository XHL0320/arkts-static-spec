/*
 * @id NSM_13_06_010_FAIL_EXPORT_UNEXPORTED_EXTENDS
 * @expect compile-fail
 * @section 13.6
 * @design An unexported class or interface is used in extends/implements
 *                   clause of exported class → compile-time error
 */

class C { constructor() {} }
interface I {}

// Compile-time error: 'C' and 'I' must be exported
export class C1 extends C implements I {}
