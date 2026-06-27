/*
 * @id NSM_13_04_3_003_FAIL_ALIAS_ORIGINAL_NOT_ACCESSIBLE
 * @expect compile-fail
 * @section 13.4.3
 * @design After using alias, the original name is not accessible
 */

import { sin as Sine } from "@ohos.math"

function main(): void {
    let x: number = sin(1.0) // Compile-time error: 'sin' is not accessible after alias
}
