/**
 * @id EXP_07_02_03_007_PASS_INT_ASSOCIATIVE
 * @expect compile-pass
 * @section 7.2.3
 * @design 验证整数加乘可结合编译通过：整数加法和乘法满足结合律
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function main(): void {
  let a: int = (1 + 2) + 3;
  let b: int = 1 + (2 + 3);
  let c: int = (2 * 3) * 4;
  let d: int = 2 * (3 * 4);
  let matchAdd: boolean = a == b;
  let matchMul: boolean = c == d;
  console.log("" + matchAdd + matchMul);
}
