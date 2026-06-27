/*
 * @id NSM_13_03_005_PASS_NAMESPACE_EMBEDDED
 * @expect compile-pass
 * @section 13.3
 * @design Embedded namespaces are allowed
 */

namespace ExternalSpace {
    export function foo(): void {
        console.log("ExternalSpace.foo")
    }
    export let variable: number = 1234

    export namespace EmbeddedSpace {
        export const constant: int = 5678
    }
}

function main(): void {
    if (ExternalSpace.variable == ExternalSpace.EmbeddedSpace.constant) {
        ExternalSpace.variable = 4321
    }
    ExternalSpace.foo()
}
