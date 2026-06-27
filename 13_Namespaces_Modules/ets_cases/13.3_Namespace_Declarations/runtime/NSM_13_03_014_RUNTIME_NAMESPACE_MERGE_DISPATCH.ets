/*
 * @id NSM_13_03_014_RUNTIME_NAMESPACE_MERGE_DISPATCH
 * @expect runtime
 * @section 13.3
 * @design Merged namespace allows calling functions from both parts
 */

namespace A {
    export function foo(): void {
        console.log("1st A.foo()")
    }
}

namespace A {
    export function goo(): void {
        foo()
    }
}

function main(): int {
    A.foo()
    A.goo()
    return 0
}
