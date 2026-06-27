/*
 * @id NSM_13_06_016_FAIL_EXPORT_CLASS_PUBLIC_FIELD_UNEXPORTED
 * @expect compile-fail
 * @section 13.6
 * @design export class with public field of unexported type
 * @note class Inner is not exported, so public field of type Inner
 *             in exported class Outer causes compile-time error
 */

class Inner { constructor() {} }

// Compile-time error: 'Inner' must be exported
export class Outer {
    public field: Inner = new Inner()
}
