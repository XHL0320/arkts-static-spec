/**
 * @id EXP2_17_13_1_010_FAIL_MISSING_THIS_PARAM
 * @expect compile-fail
 * @section 17.13.1
 * @design 使用 this 但函数没有定义为接收者函数时应编译失败 ESE0203
 * @note 反向用例：验证该场景应产生编译时错误
 */
class Worker { status: string = "idle" }
function reportStatus(): string { return this.status }
function testMissingThisParam(): void {
  let w: Worker = new Worker()
  let result: string = reportStatus()
}
