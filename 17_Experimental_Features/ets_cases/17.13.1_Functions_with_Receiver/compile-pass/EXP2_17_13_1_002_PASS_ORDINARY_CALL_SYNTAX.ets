/**
 * @id EXP2_17_13_1_002_PASS_ORDINARY_CALL_SYNTAX
 * @expect compile-pass
 * @section 17.13.1
 * @design 接收者函数通过普通函数调用语法调用：funcName(receiver, args)
 * @note 正向用例：验证该特性编译通过的正确用法
 */
class ValueHolder { data: string = "default" }
function getData(this: ValueHolder): string { return this.data }
function setData(this: ValueHolder, d: string): void { this.data = d }
function testOrdinaryCallSyntax(): void {
  let vh: ValueHolder = new ValueHolder()
  setData(vh, "updated")
  let result: string = getData(vh)
  console.log("compiled successfully")
}
