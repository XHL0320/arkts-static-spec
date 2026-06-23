/**
 * @id EXP_07_02_03_004_PASS_SHORT_OR_FALSE
 * @expect compile-pass
 * @section 7.2.3
 * @design 验证 || 短路求值编译通过：左为 false 时右操作数被求值
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function track(s: string): boolean {
  return s == "true";
}

function main(): void {
  let a: boolean = track("false") || track("right");
  let b: boolean = (1 > 2) || track("also right");
  console.log("" + a + b);
}
