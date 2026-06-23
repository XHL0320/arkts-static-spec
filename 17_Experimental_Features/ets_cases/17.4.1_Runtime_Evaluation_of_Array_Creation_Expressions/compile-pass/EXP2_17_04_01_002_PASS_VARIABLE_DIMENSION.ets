/**
 * @id EXP2_17_04_01_002_PASS_VARIABLE_DIMENSION
 * @expect compile-pass
 * @section 17.4.1
 * @design 变量维度数组创建表达式：验证使用变量作为维度参数的数组创建编译通过
 * @note 正向用例：运行时维度值由变量决定
 */
function testVariableDimension(): void {
  let size: int = 3
  let arr: int[] = new int[size] (99)
  console.log(arr.length)
  console.log(arr[0])
}
