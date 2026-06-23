/**
 * @id EXP2_17_04_01_001_PASS_BASIC_INT_ARRAY_CREATION
 * @expect compile-pass
 * @section 17.4.1
 * @design 基本 int 数组创建表达式：验证 new int[5] (42) 语法编译通过
 * @note 正向用例：字面量维度和字面量元素值的数组创建
 */
function testBasicIntArrayCreation(): void {
  let arr: int[] = new int[5] (42)
  console.log(arr.length)
  console.log(arr[0])
}
