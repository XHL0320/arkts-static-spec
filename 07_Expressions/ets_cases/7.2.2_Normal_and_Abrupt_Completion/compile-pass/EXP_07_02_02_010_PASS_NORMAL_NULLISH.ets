/**
 * @id EXP_07_02_02_010_PASS_NORMAL_NULLISH
 * @expect compile-pass
 * @section 7.2.2
 * @design 验证 nullish 合并表达式正常完成：空值合并求值无错误抛出
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function main(): void {
  let x: int | undefined = undefined;
  let y: int = x ?? 42;
  let a: int = 10;
  let b: int = a ?? 0;
  let result: int = (x ?? 5) + (a ?? 1);
  console.log("" + y + b + result);
}
