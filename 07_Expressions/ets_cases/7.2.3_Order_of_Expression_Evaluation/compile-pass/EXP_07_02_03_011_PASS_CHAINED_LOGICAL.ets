/**
 * @id EXP_07_02_03_011_PASS_CHAINED_LOGICAL
 * @expect compile-pass
 * @section 7.2.3
 * @design 验证链式逻辑运算编译通过：连续 && 或 || 的求值顺序
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function main(): void {
  let a: boolean = true && false && true;
  let b: boolean = false || true || false;
  let c: boolean = (1 > 0) && (2 < 3) && (4 == 4);
  let d: boolean = (1 > 2) || (3 > 1) || (5 < 0);
  console.log("" + a + b + c + d);
}
