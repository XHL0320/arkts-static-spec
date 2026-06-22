/**
 * @id CON_06_02_024_RUNTIME_UNION_NULLISH_STRING
 * @expect runtime
 * @section 6.2
 * @design string|null|undefined 联合类型 string context 运行时行为
 * @note 运行时用例：实际执行验证 union 类型各分支的 string 转换
 */
function main(): void {
  let x: string | null | undefined = null
  let r1: string = "string is " + x
  if (r1 != "string is null") {
    throw new Error("assertion failed: expected 'string is null', got '" + r1 + "'")
  }

  x = undefined
  let r2: string = "string is " + x
  if (r2 != "string is undefined") {
    throw new Error("assertion failed: expected 'string is undefined', got '" + r2 + "'")
  }

  x = "hello"
  let r3: string = "string is " + x
  if (r3 != "string is hello") {
    throw new Error("assertion failed: expected 'string is hello', got '" + r3 + "'")
  }

  console.log("Union nullish string conversion verified")
}
