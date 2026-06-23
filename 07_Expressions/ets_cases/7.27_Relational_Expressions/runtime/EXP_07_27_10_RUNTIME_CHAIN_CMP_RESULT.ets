/**
 * @id EXP_07_27_10_RUNTIME_CHAIN_CMP_RESULT
 * @expect runtime
 * @section 7.27
 * @design 链式比较结果验证
 * @note 运行时用例：实际执行验证链式比较结果验证
 */

function main(): void {
  let a: int = 1; let b: int = 2; let c: int = 3
  let r: boolean = (a < b) && (b < c)
  if (!r) { throw new Error("assertion failed: chain comparison") }
  console.log("verified")
}
