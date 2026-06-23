/**
 * @id LEX_02_08_013_PASS_SPREAD_OP
 * @expect compile-pass
 * @section 2.8
 * @design 展开运算符 ... 在数组与可变参数中的使用
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function sum(...nums: number[]): number {
  let total: number = 0
  for (const n of nums) {
    total += n
  }
  return total
}
function testSpread(): void {
  let a: number[] = [1, 2, 3]
  let b: number[] = [...a, 4, 5]
  let r: number = sum(...a)
}
