/**
 * @id EXP_07_25_02_023_FAIL_STRING_SUB
 * @expect compile-fail
 * @section 7.25.2
 * @design 验证 string - string 产生编译错误。
 *         spec：- 没有字符串拼接语义；string 不可转换为数值类型。
 * @note 反向用例：string - string 编译错误
 */
function main(): void {
  let s1: string = "Hello"
  let s2: string = "World"
  let r = s1 - s2  // error: string not convertible to numeric, and - has no string concat rule
}
main()
