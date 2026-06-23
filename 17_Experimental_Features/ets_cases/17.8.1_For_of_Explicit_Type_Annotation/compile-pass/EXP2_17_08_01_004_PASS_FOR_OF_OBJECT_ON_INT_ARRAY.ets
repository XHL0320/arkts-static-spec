/**
 * @id EXP2_17_08_01_004_PASS_FOR_OF_OBJECT_ON_INT_ARRAY
 * @expect compile-pass
 * @section 17.8.1
 * @design for-of 循环变量显式标注 Object 类型遍历 int[] 数组：int 可通过装箱赋值给 Object
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testForOfObjectOnIntArray(): void {
  let arr: int[] = [10, 20, 30]
  let count: int = 0
  for (let obj: Object of arr) {
    if (obj instanceof Object) {
      count = count + 1
    }
  }
  console.log(count)
}
