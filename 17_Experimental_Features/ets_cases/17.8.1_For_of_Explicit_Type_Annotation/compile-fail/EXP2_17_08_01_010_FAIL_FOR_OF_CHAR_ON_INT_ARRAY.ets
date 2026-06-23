/**
 * @id EXP2_17_08_01_010_FAIL_FOR_OF_CHAR_ON_INT_ARRAY
 * @expect compile-fail
 * @section 17.8.1
 * @design for-of 循环变量显式标注 char 类型遍历 int[] 数组：char 与 int 不直接兼容（char 不能从 int 赋值），应产生编译时错误
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testForOfCharOnIntArray(): void {
  let arr: int[] = [65, 66, 67]
  for (let c: char of arr) {
    console.log(c)
  }
}
