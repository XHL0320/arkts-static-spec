/**
 * @id EXP2_17_15_012_FAIL_GETTER_NO_RETURN_TYPE
 * @expect compile-fail
 * @section 17.15
 * @design GETTER_NO_RETURN_TYPE
 * @note spec: missing CTE check
 */
class C012 {
    get val() { return 1 }
}

