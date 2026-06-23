/**
 * @id EXP_07_25_02_022_FAIL_BOOLEAN_INT_SUB
 * @expect compile-fail
 * @section 7.25.2
 * @design 验证 boolean-int 产生编译错误。
 *         spec：- 要求操作数都是 bigint，或都可转换为数值类型；boolean 不可转换。
 * @note 反向用例：boolean-int 无数值转换
 */
function main(): void {
  let b: boolean = true
  let i: int = 5
  let r = b - i  // error: boolean not convertible to numeric
}
main()
