/**
 * @id STM_08_12_007_FAIL_return_without_expression_in_typed_function
 * @expect compile-fail
 * @section 8.12
 * @design 测试非void/非undefined返回类型函数中无表达式return产生编译错误
 * @note 反向测试：返回类型为string的函数不允许使用无表达式return，违反规范"Otherwise compile-time error"
 */
function testReturnWithoutExpr(): string {
    let x: int = 0;
    if (x == 0) {
        return;
    }
    return "ok";
}
