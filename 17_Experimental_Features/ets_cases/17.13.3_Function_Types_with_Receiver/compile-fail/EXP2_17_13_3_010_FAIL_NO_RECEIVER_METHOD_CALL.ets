/**
 * @id EXP2_17_13_3_010_FAIL_NO_RECEIVER_METHOD_CALL
 * @expect compile-fail
 * @section 17.13.3
 * @design 无接收者的函数类型不能通过方法调用语法调用 — ESE0087
 * @note 反向用例：验证该场景应产生编译时错误
 */
type PlainFunc = (x: number) => number
function testNoReceiverMethodCall(): void {
  let pf: PlainFunc = (x: number): number => { return x + 1 }
  let v: number = 5
  let result: number = v.pf()
}
