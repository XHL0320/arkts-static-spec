/**
 * @id CON_06_03_021_RUNTIME_MULTIPLICATIVE_WIDENING
 * @expect runtime
 * @section 6.3
 * @design 乘法/除法/取模 widening 运行时行为: int*double, int*long, int/long
 * @note 运行时用例：实际执行验证 widening 乘法结果
 */
function main(): void {
  let a: int = 4
  let b: double = 2.5
  let r1: double = a * b
  if (r1 != 10.0) {
    throw new Error("assertion failed: 4 * 2.5 should be 10.0, got " + r1)
  }

  let c: int = 3
  let d: long = 100
  let r2: long = c * d
  if (r2 != 300) {
    throw new Error("assertion failed: 3 * 100 should be 300")
  }

  let e: int = 10
  let f: int = 3
  let r3: int = e % f
  if (r3 != 1) {
    throw new Error("assertion failed: 10 % 3 should be 1")
  }

  let g: int = 7
  let h: int = 2
  let r4: int = g / h
  if (r4 != 3) {
    throw new Error("assertion failed: 7 / 2 should be 3 (integer division)")
  }

  console.log("Multiplicative widening verified")
}
