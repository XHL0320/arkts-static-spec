/**
 * @id EXP_07_36_004_PASS_CONST_PAREN
 * @expect compile-pass
 * @section 7.36
 * @design 常量表达式：括号表达式
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
const X: int = (1 + 2) * 3
const Y: int = (5 - 2) << 1
function testConstParen(): void {
  console.log(X.toString(), Y.toString())
}
