/**
 * @id EXP_07_32_01_012_RUNTIME_RANGEERROR_TOO_LARGE
 * @expect runtime
 * @runtime-throws=RangeError
 * @section 7.32.1
 * @design 验证数组索引大于等于数组长度时抛出 RangeError：arr[5] = value（len=3）应抛 RangeError，不执行赋值
 * @note 运行时异常用例：当索引 >= length 时，应抛出 RangeError。根据规范第 7.32.1 节，索引 < 0 或 >= length 时抛出 RangeError
 */

function main(): void {
  let arr: int[] = [1, 2, 3];
  arr[5] = 99;  // 应抛出 RangeError（数组长度 3，索引 5 >= 3）
  console.log("unreachable");
}
