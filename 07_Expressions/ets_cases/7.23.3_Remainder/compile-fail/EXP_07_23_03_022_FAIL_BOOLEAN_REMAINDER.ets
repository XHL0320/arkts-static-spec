/**
 * @id EXP_07_23_03_022_FAIL_BOOLEAN_REMAINDER
 * @expect compile-fail
 * @section 7.23.3
 * @design 验证布尔值取余 boolean % boolean 产生编译时错误。
 *         取余运算符仅接受数值类型和 bigint，boolean 不在其中。
 * @note 反向用例：布尔值取余应报编译时错误
 */
function main(): void {
  let a: boolean = true
  let b: boolean = false
  let c = a % b
}
main()
