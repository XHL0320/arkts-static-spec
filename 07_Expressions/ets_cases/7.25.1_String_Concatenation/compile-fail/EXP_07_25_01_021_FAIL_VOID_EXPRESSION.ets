/**
 * @id EXP_07_25_01_021_FAIL_VOID_EXPRESSION
 * @expect compile-fail
 * @section 7.25.1
 * @design 验证 void 表达式作为字符串拼接操作数应报编译错误
 * @note 反向用例：void 类型表达式无可用字符串转换，应产生编译时错误
 */
function foo(): void {}

function main(): void {
    let s: string = "result: " + foo();
}
