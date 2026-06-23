/**
 * @id EXP2_17_01_005_PASS_CHAR_GENERIC_ARRAY
 * @expect compile-pass
 * @section 17.1
 * @design char 作为泛型类型参数：char 可以用于数组和泛型容器类型
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testCharGenericArray(): void {
  let arr: char[] = [c'a', c'b', c'c']
  console.log(arr[0])
  console.log(arr[1])
  console.log(arr[2])
}
