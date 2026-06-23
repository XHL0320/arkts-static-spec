/**
 * @id EXP2_17_13_3_007_FAIL_NON_RECEIVER_TO_RECEIVER_FUNC_TYPE
 * @expect compile-fail
 * @section 17.13.3
 * @design 非接收者函数赋值给带接收者的函数类型应编译失败 ESE0318
 * @note 反向用例：验证该场景应产生编译时错误
 */
class Host { value: number = 0 }
type ReceiverFunc = (this: Host) => number
function testNonReceiverAssign(): void {
  let plainFunc: (x: number) => number = (x: number): number => { return x * 2 }
  let rf: ReceiverFunc = plainFunc
}
