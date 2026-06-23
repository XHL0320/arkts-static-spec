/**
 * @id STM_08_09_028_RUNTIME_FOR_OF_FIXED_ARRAY
 * @expect runtime
 * @section 8.9
 * @design FixedArray for-of 迭代

 * @note 运行时用例：实际执行验证FixedArray迭代
 */
function main(): void {
  let arr: int[] = [10, 20, 30]
  let sum: int = 0
  for (let x of arr) { sum = sum + x }
  if (sum != 60) { throw new Error("assertion: 10+20+30=60") }
  console.log("verified")
}
