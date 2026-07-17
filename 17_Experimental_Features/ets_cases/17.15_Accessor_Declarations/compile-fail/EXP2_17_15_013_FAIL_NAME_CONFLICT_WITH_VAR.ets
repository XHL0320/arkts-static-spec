/**
 * @id EXP2_17_15_013_FAIL_NAME_CONFLICT_WITH_VAR
 * @expect compile-fail
 * @section 17.15
 * @design NAME_CONFLICT_WITH_VAR
 * @note spec: missing CTE check
 */
let name: int = 1
class C013 {
    get name(): int { return 1 }
}

