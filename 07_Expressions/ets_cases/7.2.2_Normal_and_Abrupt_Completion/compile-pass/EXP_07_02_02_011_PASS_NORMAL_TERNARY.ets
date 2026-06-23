/**
 * @id EXP_07_02_02_011_PASS_NORMAL_TERNARY
 * @expect compile-pass
 * @section 7.2.2
 * @design 验证三元表达式正常完成：条件求值无错误抛出
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function main(): void {
  let a: int = 10;
  let b: int = 20;
  let max: int = a > b ? a : b;
  let min: int = a < b ? a : b;
  let label: string = max > 0 ? "positive" : "non-positive";
  console.log("" + max + min + label);
}
