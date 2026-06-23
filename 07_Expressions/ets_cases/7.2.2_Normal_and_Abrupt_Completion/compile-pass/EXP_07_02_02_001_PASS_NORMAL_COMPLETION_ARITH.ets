/**
 * @id EXP_07_02_02_001_PASS_NORMAL_COMPLETION_ARITH
 * @expect compile-pass
 * @section 7.2.2
 * @design 验证算术表达式正常完成：加减乘除（非零除数）在整数场景下无错误抛出
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function main(): void {
  let a: int = 10 + 5;
  let b: int = a - 3;
  let c: int = a * 2;
  let d: int = 20 / 4;
  let e: int = 17 % 5;
  let f: int = (a + b) * (c - d) / 2;
  console.log("" + a + b + c + d + e + f);
}
