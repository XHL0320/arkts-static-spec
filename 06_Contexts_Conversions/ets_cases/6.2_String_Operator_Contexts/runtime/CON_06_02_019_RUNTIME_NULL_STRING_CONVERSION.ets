/**
 * @id CON_06_02_019_RUNTIME_NULL_STRING_CONVERSION
 * @expect runtime
 * @section 6.2
 * @design null string 转换运行时行为：null → "null"
 * @note 运行时用例：实际执行验证 null → "null"
 */
function main(): void {
  let r1: string = "" + null
  if (r1 != "null") {
    throw new Error("assertion failed: expected 'null', got '" + r1 + "'")
  }

  let r2: string = "result: " + null
  if (r2 != "result: null") {
    throw new Error("assertion failed: expected 'result: null', got '" + r2 + "'")
  }

  let r3: string = null + " value"
  if (r3 != "null value") {
    throw new Error("assertion failed: expected 'null value', got '" + r3 + "'")
  }

  console.log("Null string conversion verified")
}
