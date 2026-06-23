/**
 * @id LEX_02_08_016_FAIL_MISSING_OPERAND
 * @expect compile-fail
 * @section 2.8
 * @design 二元运算符缺少右操作数应产生语法错误
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testMissingOperand(): void {
  let a: number = 10
  let r: number = a +
}
