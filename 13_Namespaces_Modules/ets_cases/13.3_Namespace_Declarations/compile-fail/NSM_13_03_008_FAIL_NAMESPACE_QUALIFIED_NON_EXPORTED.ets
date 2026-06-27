/*
 * @id NSM_13_03_008_FAIL_NAMESPACE_QUALIFIED_NON_EXPORTED
 * @expect compile-fail
 * @section 13.3
 * @design Using a qualifiedName for non-exported entity both inside and
 *                   outside a namespace causes a compile-time error
 */

namespace NS {
    export let a: number = 1
    let b: number = 2

    export function bar(): void {
        let v: number
        v = NS.b // Compile-time error, `b` not exported
    }
}

function main(): void {
    NS.b = 1 // Compile-time error, `NS.b` not exported
}
