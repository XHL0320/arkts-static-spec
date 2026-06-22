/**
 * @id EXP_07_33_002_PASS_TERNARY_NESTED
 * @expect compile-pass
 * @section 7.33
 * @design 嵌套三元条件（右结合）
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testTernaryNested(): void {
  let a: boolean = true; let b: boolean = false
  let result: int = a ? (b ? 1 : 2) : 3
  console.log(result.toString())
}
