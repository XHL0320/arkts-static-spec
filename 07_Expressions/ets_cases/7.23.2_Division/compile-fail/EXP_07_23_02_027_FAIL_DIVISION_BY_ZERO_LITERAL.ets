/**
 * @id EXP_07_23_02_027_FAIL_DIVISION_BY_ZERO_LITERAL
 * @expect compile-fail
 * @section 7.23.2
 * @design 验证字面量整数除零产生编译时错误。
 *         spec：if the divisor value of integer division is detected to be 0
 *         during compilation, then a compile-time error occurs.
 * @note 反向用例：spec 要求报错，但 ArkTS 实际编译通过
 *       ⚠️ SPEC 不一致：spec 要求字面量除零报编译时错误，实现未检测
 *       分类：D 类（Spec 与实现不一致）
 */
function main(): void {
  let a: int = 10
  let b: int = a / 0
}
main()
