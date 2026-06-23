/**
 * @id STM_08_15_1_017_FAIL_catch_type_annotation_object
 * @expect compile-fail
 * @section 8.15.1
 * @design 验证 catch 参数类型注解为 object（非 Error 类型）时产生编译错误。
 * @note 异常测试：catch 子句参数被注解为 object 类型，违反规范中 catch 标识符类型必须为 Error 的规定。
 */
function testCatchWrongTypeObject(): void {
    try {
        throw new Error("test");
    } catch (e: object) {
        let msg: string = "caught";
    }
}
