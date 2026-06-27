/*
 * @id NSM_13_03_004_PASS_NAMESPACE_UNQUALIFIED_ACCESS
 * @expect compile-pass
 * @section 13.3
 * @design Namespace entities can be used inside a namespace without qualification
 */

namespace NS {
    export let a: number = 1
    let b: number = 2

    export function foo(): void {
        let v: number = a // OK, no qualification needed
        v = b // OK, no qualification needed
        console.log(v.toString())
    }
}

function main(): void {
    NS.foo()
}
