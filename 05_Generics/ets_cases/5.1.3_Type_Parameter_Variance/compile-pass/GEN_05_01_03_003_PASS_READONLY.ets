/**
 * @id GEN_05_01_03_003_PASS_READONLY
 * @expect compile-pass
 * @section 5.2
 * @design out readonly字段
 * @note 正向用例：验证 out 类型参数用于 readonly 字段
 */
class X2<out T> {
    readonly field: T;
    constructor(v: T) { this.field = v; }
}
