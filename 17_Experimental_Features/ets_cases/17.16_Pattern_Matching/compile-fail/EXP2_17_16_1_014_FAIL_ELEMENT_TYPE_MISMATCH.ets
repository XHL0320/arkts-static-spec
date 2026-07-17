/**
 * @id EXP2_17_16_1_014_FAIL_ELEMENT_TYPE_MISMATCH
 * @expect compile-fail
 * @section 17.16.1
 * @design ELEMENT_TYPE_MISMATCH
 * @note spec: missing CTE check
 */
function test(): void { let [a: string] = [42] }

