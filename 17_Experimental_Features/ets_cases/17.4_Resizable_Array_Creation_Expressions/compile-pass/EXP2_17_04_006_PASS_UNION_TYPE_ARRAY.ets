/**
 * @id EXP2_17_04_006_PASS_UNION_TYPE_ARRAY
 * @expect compile-pass
 * @section 17.4
 * @design 联合类型数组创建：验证 new (Object|undefined)[5](undefined) 创建联合类型数组
 * @note 正向用例：验证联合类型作为数组元素类型编译通过
 */
function testUnionTypeArrayCreation(): void {
  let arr = new (Object | undefined)[5](undefined)
  console.log(arr.length)
  console.log(arr[0])
}
