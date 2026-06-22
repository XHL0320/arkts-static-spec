/**
 * @id CON_06_02_010_PASS_UNION_NULLISH_STRING_CONCAT
 * @expect compile-pass
 * @section 6.2
 * @design String context: string|null|undefined 联合类型 + string
 * @note 正向用例：验证 union 类型中 null/undefined 分支的 string context 转换
 */
function testUnionNullishStringConcat(): void {
  let x: string | null | undefined = null
  let s1: string = "string is " + x

  x = undefined
  let s2: string = "string is " + x

  x = "hello"
  let s3: string = "string is " + x
}
