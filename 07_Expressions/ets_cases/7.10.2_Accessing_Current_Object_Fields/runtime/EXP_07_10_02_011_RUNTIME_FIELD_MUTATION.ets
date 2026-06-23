/**
 * @id EXP_07_10_02_011_RUNTIME_FIELD_MUTATION
 * @expect runtime
 * @section 7.10.2
 * @design 运行时验证实例字段修改：非 readonly 字段修改后反映新值
 * @note 运行时用例：验证实例字段的 variable 语义，赋值后读取新值
 */
class Data {
    value: int = 0
    label: string = ""
}
function main(): void {
    let d: Data = new Data()
    d.value = 42
    if (d.value != 42) {
        throw new Error("assertion failed: field value after assignment")
    }
    d.value = d.value + 8
    if (d.value != 50) {
        throw new Error("assertion failed: field value after increment")
    }
    console.log("verified")
}
