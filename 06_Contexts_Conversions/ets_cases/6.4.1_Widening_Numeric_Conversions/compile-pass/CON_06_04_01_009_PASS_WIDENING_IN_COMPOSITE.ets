/**
 * @id CON_06_04_01_009_PASS_WIDENING_IN_COMPOSITE
 * @expect compile-pass
 * @section 6.4.1
 * @design Widening 在复合字面量上下文中: 数组/对象字面量中的 widening
 * @note 正向用例：验证复合字面量的 widening
 */
function testWideningInComposite(): void {
  let arr: long[] = [1, 2, 3]

  let i: int = 10
  let arr2: double[] = [1.0, i, 3.0]
}
