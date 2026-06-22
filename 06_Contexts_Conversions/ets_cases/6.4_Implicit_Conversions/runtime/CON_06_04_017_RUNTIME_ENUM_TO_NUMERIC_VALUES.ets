/**
 * @id CON_06_04_017_RUNTIME_ENUM_TO_NUMERIC_VALUES
 * @expect runtime
 * @section 6.4
 * @design Enumeration to Numeric 运行时值保留
 * @note 运行时用例：实际执行验证枚举→数值转换的正确性
 */
enum Level {
  Low,
  Medium,
  High
}

function main(): void {
  let a: int = Level.Low
  if (a != 0) {
    throw new Error("assertion failed: Low should be 0, got " + a)
  }

  let b: int = Level.Medium
  if (b != 1) {
    throw new Error("assertion failed: Medium should be 1")
  }

  let c: int = Level.High
  if (c != 2) {
    throw new Error("assertion failed: High should be 2")
  }

  let d: long = Level.High
  if (d != 2) {
    throw new Error("assertion failed: High→long should be 2")
  }

  console.log("Enum to numeric values verified")
}
