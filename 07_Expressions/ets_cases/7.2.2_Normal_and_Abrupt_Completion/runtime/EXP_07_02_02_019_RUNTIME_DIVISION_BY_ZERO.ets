/**
 * @id EXP_07_02_02_019_RUNTIME_DIVISION_BY_ZERO
 * @expect runtime
 * @section 7.2.2
 * @design 验证整数除零（变量零，非字面量零）时抛出 ArithmeticError
 * @note 运行时用例：验证该场景的运行时行为；字面量零在编译时报错，变量零在运行时抛异常
 * @runtime-throws=ArithmeticError
 */
function main(): void {
  let divisor: int = 0;
  let a: int = 10 / divisor;
  console.log("" + a);
}
