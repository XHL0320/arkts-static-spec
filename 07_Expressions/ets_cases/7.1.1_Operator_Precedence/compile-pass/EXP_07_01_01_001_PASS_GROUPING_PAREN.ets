/**
 * @id EXP_07_01_01_001_PASS_GROUPING_PAREN
 * @expect compile-pass
 * @section 7.1.1
 * @design 括号 `()` 优先级最高，`(2 + 3) * 4` 先计算括号内加法再乘法
 * @note 正向用例：验证括号分组运算符最高优先级
 */
function testGroupingParen(): void {
  let a: int = (2 + 3) * 4
  let b: int = (10 / 2) + 3
  let c: int = ((1 + 2) * (3 + 4))
}
