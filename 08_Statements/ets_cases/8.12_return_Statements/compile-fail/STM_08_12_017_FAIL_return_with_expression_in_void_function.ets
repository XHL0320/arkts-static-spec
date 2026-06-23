/**
 * @id STM_08_12_017_FAIL_return_with_expression_in_void_function
 * @expect compile-fail
 * @section 8.12
 * @design 测试void函数中带表达式的return语句产生编译错误
 * @note 反向测试：void函数return带表达式违反规范"Return expression type must be assignable to function return type"，int表达式不可赋值给void
 */
function testReturnExprInVoid(): void {
    let x: int = 10;
    if (x > 5) {
        return x;
    }
}

function testReturnStringInVoid(): void {
    return "unexpected";
}
