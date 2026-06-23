/**
 * @id EXP_07_10_02_008_FAIL_READONLY_FIELD_OUTSIDE_CTOR
 * @expect compile-fail
 * @section 7.10.2
 * @design 构造器外对 readonly 实例字段赋值：readonly 字段初始化后不可修改
 * @note 反向用例：验证 readonly 实例字段在构造器外赋值应报编译错误
 */
class Data {
    readonly id: int = 100
}
function bad(): void {
    let d: Data = new Data()
    d.id = 200
}
