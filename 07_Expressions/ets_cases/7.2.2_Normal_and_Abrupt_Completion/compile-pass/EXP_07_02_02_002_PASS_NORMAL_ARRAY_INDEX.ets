/**
 * @id EXP_07_02_02_002_PASS_NORMAL_ARRAY_INDEX
 * @expect compile-pass
 * @section 7.2.2
 * @design 验证数组索引正常完成：有效索引（arr[0], arr[length-1]）无 RangeError 抛出
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function main(): void {
  let arr: FixedArray<int> = [10, 20, 30];
  let first: int = arr[0];
  let last: int = arr[2];
  let mid: int = arr[1];
  console.log("" + first + last + mid);
}
