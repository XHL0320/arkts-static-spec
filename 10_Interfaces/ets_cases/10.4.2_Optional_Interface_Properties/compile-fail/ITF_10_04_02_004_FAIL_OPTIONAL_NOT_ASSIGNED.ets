/**
 * @id ITF_10_04_02_004_FAIL_OPTIONAL_NOT_ASSIGNED
 * @expect compile-fail
 * @section 10.4.2
 * @design 类未实现可选属性不报错，但如果使用时未正确处理应为编译错误
 * @note 反向用例：验证可选属性未赋值时直接使用可能出错
 */
interface Config {
    required: string;
    optional?: string;
}
function test(c: Config): void {
    let s: string = c.optional;
}
