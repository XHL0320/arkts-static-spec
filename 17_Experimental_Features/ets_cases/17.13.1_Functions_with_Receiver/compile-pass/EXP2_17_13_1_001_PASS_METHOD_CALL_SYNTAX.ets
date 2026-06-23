/**
 * @id EXP2_17_13_1_001_PASS_METHOD_CALL_SYNTAX
 * @expect compile-pass
 * @section 17.13.1
 * @design 基本接收者函数通过方法调用语法调用：顶层接收者函数可通过 receiver.funcName(args) 调用
 * @note 正向用例：验证该特性编译通过的正确用法。注意：double 是 ArkTS 关键字，函数名使用 multiplyBy2
 */
class MyNumber { value: number = 0 }
function multiplyBy2(this: MyNumber): number { return this.value * 2 }
function testMethodCallSyntax(): void {
  let n: MyNumber = new MyNumber()
  n.value = 10
  let result: number = n.multiplyBy2()
  console.log("compiled successfully")
}
