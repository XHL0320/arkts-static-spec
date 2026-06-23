/**
 * @id CLS_09_08_024_FAIL_GETTER_WITH_PARAMS
 * @expect compile-fail
 * @section 9.8
 * @design getter不能有参数 — spec: getter must have no parameters
 * @note 反向用例：getter声明参数应编译失败
 */
class Bad { get value(x: int): int { return x } }
