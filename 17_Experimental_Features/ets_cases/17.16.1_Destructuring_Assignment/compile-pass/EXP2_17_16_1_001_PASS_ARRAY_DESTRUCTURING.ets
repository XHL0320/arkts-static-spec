/**
 * @id EXP2_17_16_1_001_PASS_ARRAY_DESTRUCTURING
 * @expect compile-pass
 * @section 17.16.1
 * @design 基本数组解构声明——let [a, b] = arr 从数组提取值
 * @note 正向用例：验证基本数组解构声明语法编译通过
 */
function testArrayDestructuring(): void {
  let arr: int[] = [1, 2, 3]
  let [a, b] = arr
  console.log("a=" + a + " b=" + b)
}
