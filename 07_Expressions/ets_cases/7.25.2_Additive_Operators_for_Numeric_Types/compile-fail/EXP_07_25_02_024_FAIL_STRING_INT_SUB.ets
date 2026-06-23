/**
 * @id EXP_07_25_02_024_FAIL_STRING_INT_SUB
 * @expect compile-fail
 * @section 7.25.2
 * @design 验证 string - int 产生编译错误。
 *         spec：- 要求操作数都是 bigint，或都可转换为数值类型；string 不可转换。
 * @note 反向用例：string - int 编译错误
 */
function main(): void {
  let s: string = "Hello"
  let i: int = 42
  let r = s - i  // error: string not convertible to numeric
}
main()
