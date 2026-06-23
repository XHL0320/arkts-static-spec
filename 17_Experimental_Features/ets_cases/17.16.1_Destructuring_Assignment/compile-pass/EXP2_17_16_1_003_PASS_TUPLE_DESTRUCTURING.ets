/**
 * @id EXP2_17_16_1_003_PASS_TUPLE_DESTRUCTURING
 * @expect compile-pass
 * @section 17.16.1
 * @design 元组解构声明——let [num, str] = tup 从元组提取不同类型元素
 * @note 正向用例：验证元组解构声明编译通过
 */
function testTupleDestructuring(): void {
  let tup: [int, string] = [42, "hello"]
  let [num, str] = tup
  console.log("num=" + num + " str=" + str)
}
