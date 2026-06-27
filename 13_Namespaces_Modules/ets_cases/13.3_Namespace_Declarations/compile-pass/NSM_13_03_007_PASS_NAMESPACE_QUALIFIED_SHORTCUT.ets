/*
 * @id NSM_13_03_007_PASS_NAMESPACE_QUALIFIED_SHORTCUT
 * @expect compile-pass
 * @section 13.3
 * @design Namespace name can be a qualified name (shortcut for embedded namespaces)
 *                   namespace A.B { } is shortcut for namespace A { export namespace B { } }
 */

namespace A.B.C {
    export function foo(): void {
        console.log("A.B.C.foo")
    }
}

function main(): void {
    A.B.C.foo() // Valid function call
}
