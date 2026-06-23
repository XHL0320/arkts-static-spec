/**
 * @id CLS_09_09_018_FAIL_SELF_CALL_CYCLE
 * @expect compile-fail
 * @section 9.9.1
 * @design 构造器不能直接调用自己
 * @note 反向用例
 */
class Bad { constructor() { this() } }
