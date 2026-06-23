/**
 * @id STM_08_14_002_PASS_throw_error_variable
 * @expect compile-pass
 * @section 8.14
 * @design 测试将Error实例赋值给变量后再抛出，验证变量形式的throw通过编译
 * @note 变量类型为Error，表达式类型可赋值给Error，应当编译通过
 */

function testThrowErrorVariable(): void {
    let e: Error = new Error("variable error");
    throw e;
}
