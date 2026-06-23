/**
 * @id EXP2_17_13_5_005_PASS_RECEIVER_FUNC_THIS_ACCESS
 * @expect compile-pass
 * @section 17.13.5
 * @design 顶层接收者函数中使用显式 this 访问成员并通过方法调用语法调用
 * @note 正向用例：验证该特性编译通过的正确用法
 */
class Book { title: string = ""; author: string = "" }
function getInfo(this: Book): string { return this.title + " by " + this.author }
function testReceiverFuncThisAccess(): void {
  let b: Book = new Book(); b.title = "ArkTS Guide"; b.author = "OpenHarmony"
  let info: string = b.getInfo()
  console.log("compiled successfully")
}
