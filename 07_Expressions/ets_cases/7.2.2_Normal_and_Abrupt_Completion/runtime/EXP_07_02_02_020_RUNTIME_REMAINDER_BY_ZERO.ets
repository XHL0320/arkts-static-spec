/**
 * @id EXP_07_02_02_020_RUNTIME_REMAINDER_BY_ZERO
 * @expect runtime
 * @section 7.2.2
 * @design 验证整数取余零（变量零，非字面量零）时抛出 ArithmeticError
 * @note 运行时用例：验证该场景的运行时行为
 * @runtime-throws=ArithmeticError
 */
function main(): void {
  let divisor: int = 0;
  let a: int = 10 % divisor;
  console.log("" + a);
}
