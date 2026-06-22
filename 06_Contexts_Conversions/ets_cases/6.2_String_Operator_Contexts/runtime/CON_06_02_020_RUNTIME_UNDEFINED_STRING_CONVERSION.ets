/**
 * @id CON_06_02_020_RUNTIME_UNDEFINED_STRING_CONVERSION
 * @expect runtime
 * @section 6.2
 * @design undefined string 转换运行时行为：undefined → "undefined"
 * @note 运行时用例：实际执行验证 undefined → "undefined"
 */
function main(): void {
  let u: string | undefined = undefined
  let r1: string = "value: " + u
  if (r1 != "value: undefined") {
    throw new Error("assertion failed: expected 'value: undefined', got '" + r1 + "'")
  }

  let r2: string = "" + undefined
  if (r2 != "undefined") {
    throw new Error("assertion failed: expected 'undefined', got '" + r2 + "'")
  }

  console.log("Undefined string conversion verified")
}
