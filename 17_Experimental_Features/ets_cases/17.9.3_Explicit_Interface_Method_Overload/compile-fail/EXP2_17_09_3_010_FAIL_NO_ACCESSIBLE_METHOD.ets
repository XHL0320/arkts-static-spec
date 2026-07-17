/**
 * @id EXP2_17_09_3_010_FAIL_NO_ACCESSIBLE_METHOD
 * @expect compile-fail
 * @section 17.9.3
 * @design NO_ACCESSIBLE_METHOD
 * @note spec: missing CTE check
 */
interface I010 {
    overload bar {nonexistent}
}
