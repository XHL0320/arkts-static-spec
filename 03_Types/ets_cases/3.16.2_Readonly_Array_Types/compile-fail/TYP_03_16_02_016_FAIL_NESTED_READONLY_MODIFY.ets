/**
 * @id TYP_03_16_02_016_FAIL_NESTED_READONLY_MODIFY
 * @expect compile-fail
 * @section 3.16.2
 * @design MODIFY
 * @note spec gap: newly added
 */
function test(): void { let x: readonly number[][] = [[1,2]]; x[0][0] = 42 }
