/**
 * @id EXP_07_32_02_010_RUNTIME_RANGEERROR_COMPOUND_B
 * @expect runtime
 * @section 7.32.2
 * @design 验证数组复合赋值索引 >= length 时的 RangeError
 * @note 运行时异常用例：arr[5] += 5 其中数组长度为 3
 * @runtime-throws=RangeError
 */

function main(): void {
  let arr: int[] = [10, 20, 30];

  // 索引 5 >= 长度 3 → RangeError
  arr[5] += 5;

  // 不会执行到此处
  console.log("unreachable");
}
