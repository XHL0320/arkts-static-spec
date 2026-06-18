/**
 * @id STM_08_14_017_PASS_throw_error_string_concat
 * @expect compile-pass
 * @section 8.14
 * @design 测试throw Error时使用字符串拼接构造错误消息，验证动态消息不影响对Error的赋值兼容性
 * @note 使用+运算符拼接字符串作为Error构造参数，表达式类型仍为Error，应当编译通过
 */

function testThrowErrorWithStringConcat(): void {
    let errorCode: string = "ERR_017";
    let detail: string = "resource not found";
    throw new Error("[" + errorCode + "] " + detail + " at runtime");
}
