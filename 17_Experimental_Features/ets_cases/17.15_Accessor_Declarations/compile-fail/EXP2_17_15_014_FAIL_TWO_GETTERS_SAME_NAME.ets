/**
 * @id EXP2_17_15_014_FAIL_TWO_GETTERS_SAME_NAME
 * @expect compile-fail
 * @section 17.15
 * @design TWO_GETTERS_SAME_NAME
 * @note spec: missing CTE check
 */
class C014 {
    get val(): int { return 1 }
    get val(): string { return "" }
}

