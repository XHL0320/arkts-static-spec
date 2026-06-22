/**
 * @id CON_06_03_01_022_RUNTIME_NEGATIVE_COMPARISON
 * @expect runtime
 * @section 6.3.1
 * @design 负数值在 widening 关系比较中的运行时行为
 * @note 运行时用例：实际执行验证负值的 widening 比较正确性
 */
function main(): void {
  let a: int = -10
  let b: long = -5

  if (!(a < b)) {
    throw new Error("assertion failed: -10 < -5 should be true")
  }
  if (a > b) {
    throw new Error("assertion failed: -10 > -5 should be false")
  }

  let c: int = -5
  let d: long = -10
  if (!(c > d)) {
    throw new Error("assertion failed: -5 > -10 should be true")
  }

  let e: int = -3
  let f: double = -3.0
  if (!(e >= f)) {
    throw new Error("assertion failed: -3 >= -3.0 should be true")
  }

  console.log("Negative value comparison verified")
}
