/**
 * @id EXP_07_10_01_010_RUNTIME_STATIC_FIELD_MUTATION
 * @expect runtime
 * @section 7.10.1
 * @design 运行时验证非 readonly 静态字段赋值：修改后全局可见（variable 语义）
 * @note 运行时用例：验证静态字段修改后所有读取都反映新值
 */
class Counter {
    static count: int = 0
}
function increment(): void {
    Counter.count = Counter.count + 1
}
function main(): void {
    Counter.count = 10
    if (Counter.count != 10) {
        throw new Error("assertion failed: initial assignment")
    }
    Counter.count = Counter.count + 5
    if (Counter.count != 15) {
        throw new Error("assertion failed: after increment")
    }
    console.log("verified")
}
