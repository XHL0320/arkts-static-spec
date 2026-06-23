/**
 * @id EXP2_17_13_2_003_PASS_ARRAY_RECEIVER_TYPE
 * @expect compile-pass
 * @section 17.13.2
 * @design 数组类型作为接收者类型 (number[])：合法接收者类型。使用 for..of 避免索引类型问题
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function sumElements(this: number[]): number {
  let total: number = 0
  for (let elem of this) { total = total + elem }
  return total
}
function testArrayReceiverType(): void {
  let arr: number[] = [1, 2, 3, 4, 5]
  let result: number = arr.sumElements()
  console.log("compiled successfully")
}
