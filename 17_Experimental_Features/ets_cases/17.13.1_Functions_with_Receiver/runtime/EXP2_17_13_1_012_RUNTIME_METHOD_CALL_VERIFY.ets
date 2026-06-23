/**
 * @id EXP2_17_13_1_012_RUNTIME_METHOD_CALL_VERIFY
 * @expect runtime
 * @section 17.13.1
 * @design 运行时验证：方法调用语法 receiver.funcName(args) 正确执行并返回预期结果
 * @note 运行时用例：实际执行验证接收者函数的方法调用语法
 */
class NumberBox { value: number = 0 }
function triple(this: NumberBox): number { return this.value * 3 }
function main(): void {
  let nb: NumberBox = new NumberBox(); nb.value = 7
  let r: number = nb.triple()
  if (r != 21) { throw new Error("assertion failed: expected 21, got " + r) }
  console.log("verified")
}
