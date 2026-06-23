/**
 * @id EXP_07_02_02_016_RUNTIME_ARRAY_INDEX_OOB
 * @expect runtime
 * @section 7.2.2
 * @design 验证数组索引越界时抛出 RangeError：索引 ≥ 数组长度
 * @note 运行时用例：验证该场景的运行时行为
 * @runtime-throws=RangeError
 */
function main(): void {
  let arr: FixedArray<int> = [1, 2, 3];
  let oob: int = arr[5];
  console.log("" + oob);
}
