/**
 * @id EXP_07_02_03_003_PASS_SHORT_AND_TRUE
 * @expect compile-pass
 * @section 7.2.3
 * @design 验证 && 短路求值编译通过：左为 true 时右操作数被求值
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function track(s: string): boolean {
  return s == "true";
}

function main(): void {
  let a: boolean = track("true") && track("right");
  let b: boolean = (1 > 0) && track("also right");
  console.log("" + a + b);
}
