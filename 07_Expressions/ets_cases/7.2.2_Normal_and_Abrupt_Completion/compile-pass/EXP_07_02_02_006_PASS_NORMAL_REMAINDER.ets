/**
 * @id EXP_07_02_02_006_PASS_NORMAL_REMAINDER
 * @expect compile-pass
 * @section 7.2.2
 * @design 验证整数取余正常完成：非零除数场景，无 ArithmeticError
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function main(): void {
  let a: int = 17 % 5;
  let b: int = 100 % 3;
  let c: int = a % 2;
  let x: int = 20;
  let y: int = 7;
  let d: int = x % y;
  console.log("" + a + b + c + d);
}
