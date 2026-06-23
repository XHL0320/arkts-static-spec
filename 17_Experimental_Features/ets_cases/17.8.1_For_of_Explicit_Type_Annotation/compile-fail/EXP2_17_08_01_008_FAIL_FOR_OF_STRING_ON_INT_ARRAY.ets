/**
 * @id EXP2_17_08_01_008_FAIL_FOR_OF_STRING_ON_INT_ARRAY
 * @expect compile-fail
 * @section 17.8.1
 * @design for-of 循环变量显式标注 string 类型遍历 int[] 数组：int 不能赋值给 string，应产生编译时错误
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testForOfStringOnIntArray(): void {
  let arr: int[] = [1, 2, 3]
  for (let s: string of arr) {
    console.log(s)
  }
}
