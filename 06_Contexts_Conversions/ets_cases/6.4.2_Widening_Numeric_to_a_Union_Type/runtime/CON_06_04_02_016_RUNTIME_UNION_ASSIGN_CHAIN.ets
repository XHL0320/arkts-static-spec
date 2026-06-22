/**
 * @id CON_06_04_02_016_RUNTIME_UNION_ASSIGN_CHAIN
 * @expect runtime
 * @section 6.4.2
 * @design 联合类型多次赋值链运行时行为
 * @note 运行时用例：验证联合变量多种来源赋值后的值正确性
 */
function main(): void {
  let u: byte | int = 256

  let b: byte = 1
  u = b
  if (u != 1) { throw new Error("assertion: byte→union") }

  let i: int = 100
  u = i
  if (u != 100) { throw new Error("assertion: int→union") }

  u = 200
  if (u != 200) { throw new Error("assertion: literal→union") }

  let s: short = 50
  u = s
  if (u != 50) { throw new Error("assertion: short→union widening") }

  console.log("Union assign chain verified")
}
