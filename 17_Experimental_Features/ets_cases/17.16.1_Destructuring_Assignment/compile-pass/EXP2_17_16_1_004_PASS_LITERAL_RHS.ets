/**
 * @id EXP2_17_16_1_004_PASS_LITERAL_RHS
 * @expect compile-pass
 * @section 17.16.1
 * @design 解构声明的 RHS 为数组字面量——let [a, b] = [1, 2] 直接解构字面量
 * @note 正向用例：验证 RHS 为字面量数组时解构编译通过
 */
function testLiteralRHS(): void {
  let [a, b] = [100, 200]
  console.log("a=" + a + " b=" + b)
}
