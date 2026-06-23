/**
 * @id EXP_07_02_03_010_PASS_NULLISH_COALESCING
 * @expect compile-pass
 * @section 7.2.3
 * @design 验证 nullish 合并求值顺序编译通过：?? 在特定情况下短路
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function track(): int {
  return 1;
}

function main(): void {
  let a: int | undefined = undefined;
  let b: int = a ?? track();
  let c: int = 42 ?? track();
  let d: int = (a ?? 0) + 1;
  console.log("" + b + c + d);
}
