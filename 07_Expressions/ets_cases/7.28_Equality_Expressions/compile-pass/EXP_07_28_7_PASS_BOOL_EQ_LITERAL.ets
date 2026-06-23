/**
 * @id EXP_07_28_7_PASS_BOOL_EQ_LITERAL
 * @expect compile-pass
 * @section 7.28
 * @design 布尔字面量相等
 * @note 正向用例：验证该特性编译通过的正确用法。
 */

function testBoolEqLiteral(): void {
  let r: boolean = true == true; let r2: boolean = false != true
  console.log(r.toString(), r2.toString())
}
