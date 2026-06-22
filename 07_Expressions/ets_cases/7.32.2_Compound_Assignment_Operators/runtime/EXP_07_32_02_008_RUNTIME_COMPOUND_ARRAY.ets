/**
 * @id EXP_07_32_02_008_RUNTIME_COMPOUND_ARRAY
 * @expect runtime
 * @section 7.32.2
 * @design 数组元素复合赋值

 * @note 运行时用例：实际执行验证数组复合赋值
 */
function main(): void {
  let arr: int[] = [1, 2, 3]; arr[0] += 10
  if (arr[0] != 11) { throw new Error("assertion failed: arr[0] += 10") }
  console.log("verified")
}
