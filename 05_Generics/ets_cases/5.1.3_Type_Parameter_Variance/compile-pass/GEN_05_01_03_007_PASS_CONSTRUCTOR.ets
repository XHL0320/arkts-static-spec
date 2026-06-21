/**
 * @id GEN_05_02_006_PASS_OUT_CONSTRUCTOR
 * @expect compile-pass
 * @section 5.2
 * @design out 构造函数参数
 * @note 正向用例：验证 out 类型参数用于构造函数参数
 */
class W<out T> {
    readonly value: T;
    constructor(v: T) { this.value = v; }
}
