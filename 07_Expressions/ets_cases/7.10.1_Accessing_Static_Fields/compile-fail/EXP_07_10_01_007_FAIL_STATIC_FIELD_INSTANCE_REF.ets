/**
 * @id EXP_07_10_01_007_FAIL_STATIC_FIELD_INSTANCE_REF
 * @expect compile-fail
 * @section 7.10.1
 * @design 通过实例引用访问静态字段：静态字段必须通过类名（typeReference）访问，而非实例
 * @note 反向用例：验证访问静态字段时 objectReference 必须为 typeReference，实例引用应报编译错误
 */
class Service {
    static instanceCount: int = 0
}
let s: Service = new Service()
let c: int = s.instanceCount
