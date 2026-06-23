/**
 * @id EXP_07_10_02_002_PASS_FIELD_ASSIGNMENT
 * @expect compile-pass
 * @section 7.10.2
 * @design 非 readonly 实例字段赋值：obj.field = newValue 修改字段值（variable 语义）
 * @note 正向用例：验证非 readonly 实例字段结果值为 variable，可作为赋值左值
 */
class Counter {
    value: int = 0
    label: string = "init"
}
function update(): void {
    let c: Counter = new Counter()
    c.value = 42
    c.label = "updated"
}
