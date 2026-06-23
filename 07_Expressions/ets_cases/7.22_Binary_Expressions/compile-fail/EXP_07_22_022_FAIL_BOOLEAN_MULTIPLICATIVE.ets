/**
 * @id EXP_07_22_022_FAIL_BOOLEAN_MULTIPLICATIVE
 * @expect compile-fail
 * @section 7.22
 * @design 验证布尔乘法 boolean * boolean 产生编译时错误。
 *         类型组合表规定乘法仅接受数值类型和 bigint，
 *         boolean 不在其中。
 * @note 反向用例：布尔类型在乘法运算符中应报编译时错误
 */
function main(): void {
  let a: boolean = true
  let b: boolean = false
  let c = a * b
}
main()
