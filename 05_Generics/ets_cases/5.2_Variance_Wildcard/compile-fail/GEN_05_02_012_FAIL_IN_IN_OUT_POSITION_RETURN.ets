/**
 * @id GEN_05_02_012_FAIL_IN_IN_OUT_POSITION_RETURN
 * @expect compile-fail
 * @section 5.2
 * @design in 在 out-position（返回值）
 * @note 反向用例：验证 in 类型参数作为返回值编译错误
 */
class Y<in T> {
    get(): T { return this.val; }
    private val: T;
    constructor(v: T) { this.val = v; }
}
