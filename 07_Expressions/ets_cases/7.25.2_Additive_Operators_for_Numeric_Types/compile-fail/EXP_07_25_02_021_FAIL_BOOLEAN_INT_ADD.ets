/**
 * @id EXP_07_25_02_021_FAIL_BOOLEAN_INT_ADD
 * @expect compile-fail
 * @section 7.25.2
 * @design 验证 boolean+int 产生编译错误。
 *         spec：boolean 不可转换为数值类型；操作数不是 string 也不是 bigint，且不可转换为数值类型 → 编译错误。
 * @note 反向用例：boolean+int 无数值转换
 */
function main(): void {
  let b: boolean = true
  let i: int = 5
  let r = b + i  // error: boolean not convertible to numeric
}
main()
