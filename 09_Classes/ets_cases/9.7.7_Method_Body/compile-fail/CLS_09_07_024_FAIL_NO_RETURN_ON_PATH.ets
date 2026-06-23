/**
 * @id CLS_09_07_024_FAIL_NO_RETURN_ON_PATH
 * @expect compile-fail
 * @section 9.7.7
 * @design 非void方法某执行路径无return
 * @note 反向用例
 */
class Bad { getVal(cond: boolean): int { if (cond) { return 1 } } }
