/*
 * @id NSM_13_03_010_FAIL_NAMESPACE_EXPORT_NON_EXPORT_SAME_NAME
 * @expect compile-fail
 * @section 13.3
 * @design Exported and non-exported declarations with the same name
 *                   are also considered a compile-time error
 */

namespace A {
    export function foo(): void {}
}

namespace A {
    function foo(): void {} // Compile-time error: foo() already defined as exported
}
