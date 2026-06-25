/**
 * @id GEN_05_01_03_104_FAIL_FIELD
 * @expect compile-fail
 * @section 5.1.3
 * @design in 在字段位置
 * @note 反向用例：验证 in 类型参数用于字段编译错误
 */
class Y2<in T> {
    field: T;
    constructor(v: T) { this.field = v; }
}
