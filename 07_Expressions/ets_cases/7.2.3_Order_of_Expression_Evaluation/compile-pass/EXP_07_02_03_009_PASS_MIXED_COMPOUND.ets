/**
 * @id EXP_07_02_03_009_PASS_MIXED_COMPOUND
 * @expect compile-pass
 * @section 7.2.3
 * @design 验证混合复合表达式编译通过：多种运算符组合的求值顺序
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function track(s: string): int {
  return 1;
}

function main(): void {
  let a: int = track("a") + track("b") * track("c") - track("d");
  let b: boolean = (track("x") > 0) && (track("y") < 10);
  let c: int = track("cond") > 0 ? track("t") : track("f");
  console.log("" + a + b + c);
}
