/**
 * @id EXP_07_27_002_PASS_RELATIONAL_NESTED
 * @expect compile-pass
 * @section 7.27
 * @design 嵌套关系表达式（左结合分组）
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testRelationalNested(): void {
  let a: int = 5
  let b: int = 10
  let c: int = 3
  let result: boolean = a < b == c < b
  console.log(result.toString())
}
