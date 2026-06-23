/**
 * @id EXP_07_10_01_002_PASS_STATIC_FIELD_ASSIGNMENT
 * @expect compile-pass
 * @section 7.10.1
 * @design 非 readonly 静态字段赋值：修改后后续读取反映新值（variable 语义）
 * @note 正向用例：验证非 readonly 静态字段结果值为 variable，可后续修改
 */
class Config {
    static timeout: int = 1000
    static retryCount: int = 3
}
function updateConfig(): void {
    Config.timeout = 2000
    Config.retryCount = 5
}
let t: int = Config.timeout
