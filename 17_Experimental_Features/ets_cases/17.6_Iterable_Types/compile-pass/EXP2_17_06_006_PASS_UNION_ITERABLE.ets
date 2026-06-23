/**
 * @id EXP2_17_06_006_PASS_UNION_ITERABLE
 * @expect compile-pass
 * @section 17.6
 * @design 可迭代类型的联合类型也是可迭代的，编译器应通过
 * @note 正向用例：验证联合可迭代类型编译通过
 */
function testUnionIterable(): void {
  let data: int[] | string = "abc"
  let acc: string = ""
  for (let x of data) {
    acc = acc + x
  }
}
