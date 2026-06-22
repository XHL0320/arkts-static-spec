/**
 * @id EXP_07_33_004_PASS_TERNARY_INT_CONDITION
 * @expect compile-pass
 * @section 7.33
 * @design int 类型作为三元条件（es2panda 接受非 boolean 条件）
 * @note 正向用例：es2panda 允许 int 作为三元条件，与 spec 不同。
 *       ⚠️ SPEC 不一致：spec 要求 condition 为 boolean，es2panda 接受 int
 */
function testTernaryIntCondition(): void {
  let condition: int = 1
  let result: int = condition != 0 ? 1 : 0
  console.log(result.toString())
}
