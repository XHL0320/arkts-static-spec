/**
 * @id STM_08_15_1_006_FAIL_catch_wrong_type_string
 * @expect compile-fail
 * @section 8.15.1
 * @design 验证 catch 参数类型注解为 string 时产生编译错误。catch 标识符类型必须是 Error。
 * @note 异常测试：catch 子句参数被注解为 string 类型，违反规范中 catch 标识符类型为 Error 的规定。
 */
function testCatchWrongTypeString(): void {
    try {
        throw new Error("test");
    } catch (e: string) {
        let msg: string = e;
    }
}
