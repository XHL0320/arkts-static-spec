/**
 * @id EXP2_17_03_005_PASS_VALUEARRAY_CHAR_LITERAL
 * @expect compile-pass
 * @section 17.3
 * @design ValueArray<char> 使用数组字面量创建：验证 char 值类型数组声明和初始化
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testValueArrayCharLiteral(): void {
  let a: ValueArray<char> = [c'a', c'b', c'c']
  console.log(a[0])
  console.log(a[1])
  console.log(a[2])
  console.log(a.length)
}
