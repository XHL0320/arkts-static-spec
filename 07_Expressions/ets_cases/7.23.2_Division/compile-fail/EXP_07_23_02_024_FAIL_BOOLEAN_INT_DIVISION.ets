/**
 * @id EXP_07_23_02_024_FAIL_BOOLEAN_INT_DIVISION
 * @expect compile-fail
 * @section 7.23.2
 * @design 验证 boolean / int 混合类型除法产生编译时错误。
 *         除法运算符要求数值类型与数值类型运算，或 bigint 与 bigint 运算。
 * @note 反向用例：布尔值与整数混合除法应报编译时错误
 */
function main(): void {
  let a: boolean = true
  let b: int = 5
  let c = a / b
}
main()
