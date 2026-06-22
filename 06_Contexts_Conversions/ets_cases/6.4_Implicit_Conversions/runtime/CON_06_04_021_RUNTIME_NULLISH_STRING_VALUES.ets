/**
 * @id CON_06_04_021_RUNTIME_NULLISH_STRING_VALUES
 * @expect runtime
 * @section 6.4
 * @design null/undefined 在 string 上下文中转换运行时行为
 * @note 运行时用例：实际执行验证 null→"null", undefined→"undefined"
 */
function main(): void {
  let s1: string = "" + null
  if (s1 != "null") {
    throw new Error("assertion failed: null→'null', got '" + s1 + "'")
  }

  let s2: string = "" + undefined
  if (s2 != "undefined") {
    throw new Error("assertion failed: undefined→'undefined', got '" + s2 + "'")
  }

  console.log("Nullish string values verified")
}
