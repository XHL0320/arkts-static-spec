/**
 * @id EXP_07_32_01_006_RUNTIME_ARRAY_OOB
 * @expect runtime
 * @section 7.32.1
 * @design 数组越界赋值运行时行为
 * @runtime-throws=RangeError
 * @note 运行时用例：实际执行验证数组越界抛 RangeError
 */
function main(): void {
  let arr: int[] = [1, 2, 3]
  arr[5] = 99
  console.log(arr[0].toString())
}
