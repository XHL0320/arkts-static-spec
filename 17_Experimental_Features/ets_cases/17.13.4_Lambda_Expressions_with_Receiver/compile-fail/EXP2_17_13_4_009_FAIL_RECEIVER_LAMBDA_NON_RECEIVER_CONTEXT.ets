/**
 * @id EXP2_17_13_4_009_FAIL_RECEIVER_LAMBDA_NON_RECEIVER_CONTEXT
 * @expect compile-fail
 * @section 17.13.4
 * @design 带接收者lambda赋值给无接收者的函数类型变量应编译失败 ESE0318
 * @note 反向用例：验证该场景应产生编译时错误
 */
type PlainLambda = (x: number) => number
function testReceiverLambdaNonReceiverContext(): void {
  let pl: PlainLambda = (this: number, x: number): number => { return this + x }
}
