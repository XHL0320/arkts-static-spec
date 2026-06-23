/**
 * @id EXP_07_22_025_FAIL_BOOLEAN_SHIFT
 * @expect compile-fail
 * @section 7.22
 * @design 验证布尔右移 boolean >> int 产生编译时错误。
 *         类型组合表规定移位运算符仅支持数值类型和 bigint，
 *         boolean 不在其中。
 * @note 反向用例：布尔类型在移位运算符中应报编译时错误
 */
function main(): void {
  let a: boolean = true
  let b: int = 1
  let c = a >> b
}
main()
