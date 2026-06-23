/**
 * @id EXP_07_23_03_023_FAIL_STRING_INT_REMAINDER
 * @expect compile-fail
 * @section 7.23.3
 * @design 验证 string % int 混合类型取余产生编译时错误。
 *         取余运算符要求数值类型与数值类型运算，或 bigint 与 bigint 运算。
 * @note 反向用例：字符串与整数混合取余应报编译时错误
 */
function main(): void {
  let a: string = "hello"
  let b: int = 5
  let c = a % b
}
main()
