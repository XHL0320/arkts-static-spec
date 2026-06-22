/**
 * @id CON_06_04_022_RUNTIME_BOOL_STRING_VALUES
 * @expect runtime
 * @section 6.4
 * @design boolean→string 运行时行为: true→"true", false→"false"
 * @note 运行时用例：实际执行验证 boolean string 转换
 */
function main(): void {
  let s1: string = "" + true
  if (s1 != "true") {
    throw new Error("assertion failed: true→'true', got '" + s1 + "'")
  }

  let s2: string = "" + false
  if (s2 != "false") {
    throw new Error("assertion failed: false→'false', got '" + s2 + "'")
  }

  console.log("Bool string values verified")
}
