/**
 * @id EXP2_17_04_005_PASS_BOOLEAN_ARRAY_CREATION
 * @expect compile-pass
 * @section 17.4
 * @design boolean 类型数组创建：验证 new boolean[2](true) 创建 boolean 数组，所有元素初始化为 true
 * @note 正向用例：验证 boolean 作为数组元素类型编译通过
 */
function testBooleanArrayCreation(): void {
  let arr = new boolean[2](true)
  console.log(arr.length)
  console.log(arr[0])
  console.log(arr[1])
}
