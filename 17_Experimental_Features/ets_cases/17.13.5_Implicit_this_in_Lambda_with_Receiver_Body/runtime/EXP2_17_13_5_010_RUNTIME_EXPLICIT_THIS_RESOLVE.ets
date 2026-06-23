/**
 * @id EXP2_17_13_5_010_RUNTIME_EXPLICIT_THIS_RESOLVE
 * @expect runtime
 * @section 17.13.5
 * @design 运行时验证：显式 this 正确解析到接收者成员并产生正确结果
 * @note 运行时用例：实际执行验证显式this解析
 */
class Calculator { operand: number = 0 }
function main(): void {
  let compute = (this: Calculator): number => { return this.operand * this.operand + this.operand }
  let calc: Calculator = new Calculator(); calc.operand = 5
  let r: number = compute(calc)
  if (r != 30) { throw new Error("assertion failed: expected 30, got " + r) }
  console.log("verified")
}
