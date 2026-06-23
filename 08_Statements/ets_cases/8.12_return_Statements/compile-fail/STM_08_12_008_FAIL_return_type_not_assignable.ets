/**
 * @id STM_08_12_008_FAIL_return_type_not_assignable
 * @expect compile-fail
 * @section 8.12
 * @design 测试return表达式类型不可赋值给函数返回类型时产生编译错误
 * @note 反向测试：返回类型为int的函数返回string表达式，类型不可赋值，违反规范"Return expression type must be assignable to function return type"
 */
function testReturnTypeMismatch(): int {
    return "hello";
}
