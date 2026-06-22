/**
 * @id CON_06_03_01_024_RUNTIME_SHORT_LONG_EQUALITY
 * @expect runtime
 * @section 6.3.1
 * @design short 与 long 的 ! = 比较运行时行为：short widening 为 long
 * @note 运行时用例：实际执行验证 short != long 语义
 */
function main(): void {
  let a: short = 50
  let b: long = 50
  let c: long = 99

  if (a != b) {
    throw new Error("assertion failed: 50 != 50 should be false")
  }
  if (!(a != c)) {
    throw new Error("assertion failed: 50 != 99 should be true")
  }
  if (!(a == b)) {
    throw new Error("assertion failed: 50 == 50 should be true")
  }

  console.log("Short-long equality comparison verified")
}
