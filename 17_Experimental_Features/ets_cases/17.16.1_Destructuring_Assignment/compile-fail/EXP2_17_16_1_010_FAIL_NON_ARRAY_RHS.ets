/**
 * @id EXP2_17_16_1_010_FAIL_NON_ARRAY_RHS
 * @expect compile-fail
 * @section 17.16.1
 * @design 解构非数组/元组 RHS——let [a, b] = 42 应触发编译错误 ESY0049
 * @note 反向用例：验证非数组 RHS 解构产生 ESY0049: Invalid destructuring assignment target
 */
function testNonArrayRHS(): void {
  let [a, b] = 42
  console.log(a)
}
