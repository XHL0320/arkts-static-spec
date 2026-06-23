/**
 * @id EXP2_17_08_01_012_RUNTIME_FOR_OF_ANY_EXPLICIT_ITERATE
 * @expect runtime
 * @section 17.8.1
 * @design for-of 显式 Any 类型遍历混合数组：运行时验证不同类型的元素均能正确迭代
 * @note 运行时用例：实际执行验证 Any 类型标注的 for-of 循环迭代行为
 */
function main(): void {
  let arr: Any[] = [1, "hello", 3.14, true]
  let count: int = 0
  for (let a: Any of arr) {
    count = count + 1
  }
  if (count != 4) {
    throw new Error("assertion failed: expected 4 iterations but got " + count)
  }
  // Verify the first element is an int
  let first: Any = arr[0]
  if (!(typeof first == "int")) {
    throw new Error("assertion failed: first element should be int")
  }
  console.log("verified")
}
