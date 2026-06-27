/*
 * @id NSM_13_03_006_PASS_NAMESPACE_MERGE
 * @expect compile-pass
 * @section 13.3
 * @design Namespaces with identical name in a single module merge their
 *                   exported declarations into a single namespace
 */

namespace A {
    export function foo(): void {
        console.log("1st A.foo()")
    }
}

namespace A {
    export function goo(): void {
        foo() // calls merged foo()
        A.foo() // also OK
    }
}

function main(): void {
    A.goo()
}
