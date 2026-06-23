/**
 * @id EXP_07_10_02_003_PASS_READONLY_FIELD_ACCESS
 * @expect compile-pass
 * @section 7.10.2
 * @design readonly 实例字段读取：obj.readonlyField 返回 value，不可作为左值
 * @note 正向用例：验证 readonly 实例字段访问返回 value（只读语义）
 */
class Data {
    readonly id: int = 100
    readonly name: string = "fixed"
}
let d: Data = new Data()
let id: int = d.id
let name: string = d.name
