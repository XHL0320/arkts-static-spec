/**
 * @id EXP_07_02_02_007_PASS_NORMAL_CHAINED_EXPR
 * @expect compile-pass
 * @section 7.2.2
 * @design 验证链式/复合表达式正常完成：多步求值无错误抛出，验证子表达式顺序求值正常
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function main(): void {
  let arr: FixedArray<int> = [1, 2, 3, 4];
  let idx: int = 0;
  let val: int = arr[idx] + arr[idx + 1] * arr[idx + 2] - arr[idx + 3];
  let chained: int = ((arr[0] + arr[1]) * arr[2]) / arr[3];
  console.log("" + val + chained);
}
