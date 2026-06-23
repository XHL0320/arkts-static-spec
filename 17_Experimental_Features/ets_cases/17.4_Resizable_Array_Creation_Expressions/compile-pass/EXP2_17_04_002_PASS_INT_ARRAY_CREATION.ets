/**
 * @id EXP2_17_04_002_PASS_INT_ARRAY_CREATION
 * @expect compile-pass
 * @section 17.4
 * @design int 类型数组创建：验证 new int[5](0) 创建 int 数组，所有元素初始化为 0
 * @note 正向用例：验证 int 作为数组元素类型编译通过
 */
function testIntArrayCreation(): void {
  let arr = new int[5](0)
  console.log(arr.length)
  console.log(arr[0])
  console.log(arr[4])
}
