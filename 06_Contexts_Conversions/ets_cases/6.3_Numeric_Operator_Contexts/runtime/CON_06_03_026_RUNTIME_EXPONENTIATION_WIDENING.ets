/**
 * @id CON_06_03_026_RUNTIME_EXPONENTIATION_WIDENING
 * @expect runtime
 * @section 6.3
 * @design 指数运算 widening 运行时行为: int**long, int**int
 * @note 运行时用例：实际执行验证指数运算结果
 */
function main(): void {
  let a: int = 2
  let b: long = 3
  let r1: double = a ** b
  if (r1 != 8.0) {
    throw new Error("assertion failed: 2 ** 3 should be 8.0, got " + r1)
  }

  let c: int = 5
  let r2: double = c ** 2
  if (r2 != 25.0) {
    throw new Error("assertion failed: 5 ** 2 should be 25.0")
  }

  let d: int = 10
  let r3: double = d ** 0
  if (r3 != 1.0) {
    throw new Error("assertion failed: 10 ** 0 should be 1.0")
  }

  console.log("Exponentiation widening verified")
}
