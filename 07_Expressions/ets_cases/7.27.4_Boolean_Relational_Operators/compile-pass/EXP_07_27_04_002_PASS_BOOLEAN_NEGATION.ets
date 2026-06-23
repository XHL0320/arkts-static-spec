/**
 * @id EXP_07_27_04_002_PASS_BOOLEAN_NEGATION
 * @expect compile-pass
 * @section 7.27.4
 * @design 布尔关系与逻辑非组合
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testBooleanNegation(): void {
  let a: boolean = false; let b: boolean = true
  let r: boolean = !(a > b)
  console.log(r.toString())
}
