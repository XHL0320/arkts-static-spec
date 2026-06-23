/**
 * @id CLS_09_07_025_PASS_ALL_PATHS_RETURN
 * @expect compile-pass
 * @section 9.7.7
 * @design 所有路径都有return
 * @note 正向用例
 */
class Good { getVal(cond: boolean): int { if (cond) { return 1 } else { return 0 } } }
