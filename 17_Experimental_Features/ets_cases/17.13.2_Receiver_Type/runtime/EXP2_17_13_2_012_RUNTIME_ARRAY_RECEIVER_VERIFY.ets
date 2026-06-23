/**
 * @id EXP2_17_13_2_012_RUNTIME_ARRAY_RECEIVER_VERIFY
 * @expect runtime
 * @section 17.13.2
 * @design 运行时验证：数组接收者函数正确执行数组操作
 * @note 运行时用例：实际执行验证数组作为接收者类型
 */
function computeSum(this: number[]): number {
  let total: number = 0
  for (let elem of this) { total = total + elem }
  return total
}
function main(): void {
  let numbers: number[] = [10, 20, 30, 40]
  let s: number = numbers.computeSum()
  if (s != 100) { throw new Error("assertion failed: expected 100, got " + s) }
  let s2: number = computeSum(numbers)
  if (s2 != 100) { throw new Error("assertion failed: expected 100, got " + s2) }
  console.log("verified")
}
