/**
 * @id CON_06_02_022_RUNTIME_NONSTRING_ENUM_CONVERSION
 * @expect runtime
 * @section 6.2
 * @design 非 string 值枚举 string 转换运行时行为：通过 toString() 转换
 * @note 运行时用例：实际执行验证非 string enum → toString() 结果
 */
enum Level {
  Low,
  Medium,
  High
}

function main(): void {
  let r1: string = "level: " + Level.Low
  if (r1 != "level: 0") {
    throw new Error("assertion failed: expected 'level: 0', got '" + r1 + "'")
  }

  let r2: string = Level.High + " priority"
  if (r2 != "2 priority") {
    throw new Error("assertion failed: expected '2 priority', got '" + r2 + "'")
  }

  let r3: string = "" + Level.Medium
  if (r3 != "1") {
    throw new Error("assertion failed: expected '1', got '" + r3 + "'")
  }

  console.log("Non-string enum conversion verified")
}
