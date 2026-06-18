/**
 * @id STM_08_12_010_FAIL_return_type_mismatch_in_lambda
 * @expect compile-fail
 * @section 8.12
 * @design 测试lambda表达式中return类型不可赋值给声明的返回类型时产生编译错误
 * @note 反向测试：lambda声明返回int，但return string表达式，类型不可赋值，违反规范"Return expression type must be assignable to return type"
 */

function testLambdaReturnMismatch(): void {
    let f: (x: int) => int = (x: int): int => {
        return "not a number";
    };
    console.log(f(1));
}
