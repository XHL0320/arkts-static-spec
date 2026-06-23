/**
 * @id NAM_04_07_01_002_PASS_FUNC_SIGNATURE
 * @expect compile-pass
 * @section 4.7.1
 * @design 函数签名定义
 * @note 正向用例：验证函数签名包含参数和返回类型
 */
function greet(name: string, age: number): string {
    return "Hello " + name;
}
