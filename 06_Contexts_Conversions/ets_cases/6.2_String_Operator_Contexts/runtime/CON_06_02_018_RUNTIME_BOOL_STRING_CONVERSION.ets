/**
 * @id CON_06_02_018_RUNTIME_BOOL_STRING_CONVERSION
 * @expect runtime
 * @section 6.2
 * @design boolean string 转换运行时行为：true→"true"，false→"false"
 * @note 运行时用例：实际执行验证 boolean → "true"/"false"
 */
function main(): void {
  let r1: string = "flag=" + true
  if (r1 != "flag=true") {
    throw new Error("assertion failed: expected 'flag=true', got '" + r1 + "'")
  }

  let r2: string = false + " is answer"
  if (r2 != "false is answer") {
    throw new Error("assertion failed: expected 'false is answer', got '" + r2 + "'")
  }

  let b: boolean = true
  let r3: string = "" + b
  if (r3 != "true") {
    throw new Error("assertion failed: expected 'true', got '" + r3 + "'")
  }

  console.log("Boolean string conversion verified")
}
