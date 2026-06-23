/**
 * @id EXP2_17_02_01_005_PASS_LITERAL_TYPE_INFERENCE
 * @expect compile-pass
 * @section 17.2.1
 * @design FixedArray Array Literal 类型推断：验证将字面量传递给 FixedArray<T> 形参时编译器可推断正确类型
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function sumFixedArray(arr: FixedArray<int>): int {
  let total: int = 0
  let idx: int = 0
  while (idx < arr.length) {
    total = total + arr[idx]
    idx = idx + 1
  }
  return total
}
function testLiteralTypeInference(): void {
  let result: int = sumFixedArray([10, 20, 30])
  console.log(result)
}
