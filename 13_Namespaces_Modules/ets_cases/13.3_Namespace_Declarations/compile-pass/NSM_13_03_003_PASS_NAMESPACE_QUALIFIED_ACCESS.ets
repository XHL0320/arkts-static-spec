/*
 * @id NSM_13_03_003_PASS_NAMESPACE_QUALIFIED_ACCESS
 * @expect compile-pass
 * @section 13.3
 * @design Exported namespace entity can be used in the form of qualifiedName
 *                   outside a namespace in the same module
 */

namespace NS1 {
    export let a: number = 1
    export function foo(): void {
        console.log("NS1.foo")
    }
}

function main(): void {
    let v: number = NS1.a
    NS1.foo()
}
