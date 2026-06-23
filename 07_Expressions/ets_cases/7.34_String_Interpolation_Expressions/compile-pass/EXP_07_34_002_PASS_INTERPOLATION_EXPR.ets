/**
 * @id EXP_07_34_002_PASS_INTERPOLATION_EXPR
 * @expect compile-pass
 * @section 7.34
 * @design 嵌入表达式求值
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
function testInterpolationExpr(): void {
  let a: int = 2; let b: int = 3
  let msg: string = `Result: ${a} * ${b} = ${a * b}`
  console.log(msg)
}
