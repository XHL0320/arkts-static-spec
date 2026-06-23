/**
 * @id STM_08_09_018_RUNTIME_array_mutation_during_iteration
 * @expect runtime
 * @section 8.9
 * @design for-of迭代时修改被迭代数组的元素值（非增删）不影响迭代次数
 * @note 运行时用例：验证迭代过程中修改元素值的正确行为
 */
function main(): void {
  let arr: int[] = [1, 2, 3, 4, 5]
  let sum: int = 0
  let count: int = 0
  for (let val of arr) {
    sum += val
    count++
    arr[0] = 99  // modify first element - iteration should continue normally
  }
  if (count != 5) { throw new Error("Expected 5 iterations, got " + count) }
  if (sum != 15) { throw new Error("Expected sum=15, got " + sum) }
  if (arr[0] != 99) { throw new Error("Expected arr[0]=99 after mutation") }
  console.log("verified")
}
