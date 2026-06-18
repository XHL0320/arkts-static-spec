/**
 * @id STM_08_14_001_PASS_throw_new_error
 * @expect compile-pass
 * @section 8.14
 * @design 测试直接抛出new Error()实例，验证throw Error类型表达式通过编译
 * @note 最基础的throw语句，直接抛出Error实例，应当编译通过
 */

function testThrowNewError(): void {
    throw new Error("test error message");
}
