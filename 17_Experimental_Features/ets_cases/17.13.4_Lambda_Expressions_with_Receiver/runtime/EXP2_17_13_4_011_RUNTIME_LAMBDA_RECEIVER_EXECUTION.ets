/**
 * @id EXP2_17_13_4_011_RUNTIME_LAMBDA_RECEIVER_EXECUTION
 * @expect runtime
 * @section 17.13.4
 * @design 运行时验证：带接收者的lambda通过普通调用正确执行
 * @note 运行时用例：实际执行验证lambda接收者
 */
class NumStore { value: number = 0 }
function main(): void {
  let square = (this: NumStore): number => { let v: number = this.value; return v * v }
  let ns: NumStore = new NumStore(); ns.value = 7
  let r: number = square(ns)
  if (r != 49) { throw new Error("assertion failed: expected 49, got " + r) }
  console.log("verified")
}
