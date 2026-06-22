/**
 * @id EXP_07_33_001_PASS_TERNARY_BASIC
 * @expect compile-pass
 * @section 7.33
 * @design 基本三元条件表达式
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testTernaryBasic(): void {
  let condition: boolean = true
  let result: int = condition ? 1 : 0
  let result2: string = false ? "yes" : "no"
  console.log(result.toString(), result2)
}
