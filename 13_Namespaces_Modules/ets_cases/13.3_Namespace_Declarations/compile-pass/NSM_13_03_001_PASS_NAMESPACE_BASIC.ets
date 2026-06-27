/*
 * @id NSM_13_03_001_PASS_NAMESPACE_BASIC
 * @expect compile-pass
 * @section 13.3
 * @design Basic namespace declaration
 */

namespace MathUtils {
    export function square(n: int): int {
        return n * n
    }
    export let PI: number = 3.14
}

function main(): void {
    console.log(MathUtils.square(5).toString())
}
