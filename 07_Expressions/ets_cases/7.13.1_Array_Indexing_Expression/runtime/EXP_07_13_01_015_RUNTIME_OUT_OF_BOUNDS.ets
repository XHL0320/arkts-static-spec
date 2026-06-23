/**
 * @id EXP_07_13_01_015_RUNTIME_OUT_OF_BOUNDS
 * @expect runtime
 * @runtime-throws=RangeError
 * @section 7.13.1
 * @design 验证数组越界索引运行时抛出 RangeError
 * @note 运行时用例：索引小于 0 或大于等于数组长度时抛出 RangeError
 */
function main(): void {
  let arr: int[] = [10, 20, 30];
  let val: int = arr[5];
  console.log("verified");
}
