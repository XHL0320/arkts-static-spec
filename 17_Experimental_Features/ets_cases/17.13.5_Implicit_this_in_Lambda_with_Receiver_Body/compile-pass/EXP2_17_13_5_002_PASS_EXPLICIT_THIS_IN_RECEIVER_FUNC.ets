/**
 * @id EXP2_17_13_5_002_PASS_EXPLICIT_THIS_IN_RECEIVER_FUNC
 * @expect compile-pass
 * @section 17.13.5
 * @design 接收者函数中使用显式 this. 访问成员
 * @note 正向用例：验证该特性编译通过的正确用法
 */
class Context { mode: string = "default"; enabled: boolean = true }
function getStatus(this: Context): string { return "mode=" + this.mode + " enabled=" + this.enabled }
function testExplicitThisInReceiverFunc(): void {
  let ctx: Context = new Context(); ctx.mode = "production"; ctx.enabled = false
  let status: string = ctx.getStatus()
  console.log("compiled successfully")
}
