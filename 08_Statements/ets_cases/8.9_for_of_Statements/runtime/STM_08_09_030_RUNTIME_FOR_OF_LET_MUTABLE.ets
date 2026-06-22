/**
 * @id STM_08_09_030_RUNTIME_FOR_OF_LET_MUTABLE
 * @expect runtime
 * @section 8.9
 * @design for-of 中 let 变量可修改

 * @note 运行时用例：实际执行验证let可变
 */
function main(): void {
  let arr: int[] = [1, 2, 3]
  let last: int = 0
  for (let x of arr) { last = x }
  if (last != 3) { throw new Error("assertion: last should be 3") }
  console.log("verified")
}
