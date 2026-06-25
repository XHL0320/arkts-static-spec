/**
 * @id GEN_05_01_03_102_FAIL_FIELD
 * @expect compile-fail
 * @section 5.1.3
 * @design out 在非readonly字段
 * @note 反向用例：验证 out 类型参数用于非 readonly 字段
 */
class X2<out T> {
    field: T;
    constructor(v: T) { this.field = v; }
}
