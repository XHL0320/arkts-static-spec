/**
 * @id EXP2_17_09_1_015_FAIL_CROSS_MODULE_OVERLOAD
 * @expect compile-fail
 * @section 17.9.1
 * @design CROSS_MODULE_OVERLOAD
 * @note spec: missing CTE check
 */
// Would need cross-module test - standalone: overload references unknown func
overload bar {nonexistent}
