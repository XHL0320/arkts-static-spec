/**
 * @id STM_08_12_003_PASS_return_expression_matching_type
 * @expect compile-pass
 * @section 8.12
 * @design 测试返回表达式类型匹配函数返回类型的return语句
 * @note 正向测试：string/int/boolean/types类型函数返回相应类型的表达式，类型可赋值故编译通过
 */
function testReturnString(): string {
    return "hello";
}

function testReturnInt(): int {
    return 42;
}

function testReturnBoolean(): boolean {
    return true;
}

function testReturnNumber(): number {
    return 3.14;
}
