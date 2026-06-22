/**
 * @id CON_06_01_010_PASS_COMPOSITE_ARRAY_BASIC
 * @expect compile-pass
 * @section 6.1
 * @design Composite literal context: 数组字面量元素类型与数组元素类型完全匹配
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testCompositeArrayBasic(): void {
  let intArr: int[] = [1, 2, 3, 4, 5]
  let strArr: string[] = ["a", "b", "c"]
  let boolArr: boolean[] = [true, false, true]

  let lenInt: int = intArr[0]
  let lenStr: string = strArr[1]
}
