/*
 * @id NSM_13_03_002_PASS_NAMESPACE_EXPORT
 * @expect compile-pass
 * @section 13.3
 * @design Namespace with exported entities
 */

namespace Colors {
    export const RED: string = "#FF0000"
    export const BLUE: string = "#0000FF"
    export function mix(c1: string, c2: string): string {
        return c1 + " + " + c2
    }
}

function main(): void {
    console.log(Colors.RED)
}
