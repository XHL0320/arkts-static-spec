/**
 * @id LEX_02_08_028_RUNTIME_TERNARY_RESULT
 * @expect runtime
 * @section 2.8
 * @design 三元运算符 ? : 根据条件选择分支
 * @note 运行时用例：实际执行验证语义正确性
 */
function main(): void {
  let r1: number = (5 > 3) ? 100 : 200
  if (r1 !== 100) { throw new Error("ternary true branch failed") }
  let r2: string = (1 === 2) ? "yes" : "no"
  if (r2 !== "no") { throw new Error("ternary false branch failed") }
  let n: number = 7
  let parity: string = (n % 2 === 0) ? "even" : "odd"
  if (parity !== "odd") { throw new Error("ternary nested expr failed") }
}
