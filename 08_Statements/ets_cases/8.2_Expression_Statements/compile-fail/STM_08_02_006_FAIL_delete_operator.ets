/**
 * @id STM_08_02_006_FAIL_delete_operator
 * @expect compile-fail
 * @section 8.2
 * @design 测试delete运算符在表达式语句中不被支持，应产生编译错误
 * @note ArkTS静态类型中delete运算符不可用，表达式语句中使用delete应编译失败
 */
function testDeleteExpression(): void {
    let obj: Object = { key: "value" };
    delete obj.key;
}
