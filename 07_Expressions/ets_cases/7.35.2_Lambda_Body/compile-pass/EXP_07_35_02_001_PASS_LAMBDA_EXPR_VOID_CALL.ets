/**
 * @id EXP_07_35_02_001_PASS_LAMBDA_EXPR_VOID_CALL
 * @expect compile-pass
 * @section 7.35.2
 * @design Lambda 体为 void 调用表达式
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function log(msg: string): void { console.log(msg) }
function testLambdaExprVoidCall(): void {
  let f: (msg: string) => void = (msg: string) => log(msg)
  f("hello")
}
