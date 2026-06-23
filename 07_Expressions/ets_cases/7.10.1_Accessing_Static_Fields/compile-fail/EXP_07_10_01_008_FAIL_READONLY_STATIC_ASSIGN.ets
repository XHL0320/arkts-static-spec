/**
 * @id EXP_07_10_01_008_FAIL_READONLY_STATIC_ASSIGN
 * @expect compile-fail
 * @section 7.10.1
 * @design 对 readonly 静态字段赋值：readonly 字段初始化后不允许修改
 * @note 反向用例：验证 readonly 静态字段在声明初始化器之后不可修改（value 语义）
 */
class Config {
    static readonly MAX_RETRY: int = 5
}
function bad(): void {
    Config.MAX_RETRY = 10
}
