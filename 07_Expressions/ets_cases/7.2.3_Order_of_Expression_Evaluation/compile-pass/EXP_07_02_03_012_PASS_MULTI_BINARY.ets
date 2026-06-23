/**
 * @id EXP_07_02_03_012_PASS_MULTI_BINARY
 * @expect compile-pass
 * @section 7.2.3
 * @design 验证多层二元运算编译通过：连续二元运算符的求值顺序
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function main(): void {
  let a: int = 1 + 2 + 3 + 4;
  let b: int = 10 - 3 - 2 - 1;
  let c: int = 2 * 3 * 4 * 5;
  let d: int = 100 / 2 / 5 / 2;
  let e: int = a + b * c - d;
  console.log("" + a + b + c + d + e);
}
