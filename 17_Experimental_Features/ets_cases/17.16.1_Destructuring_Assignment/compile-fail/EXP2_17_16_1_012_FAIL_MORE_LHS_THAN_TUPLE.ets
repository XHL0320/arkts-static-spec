/**
 * @id EXP2_17_16_1_012_FAIL_MORE_LHS_THAN_TUPLE
 * @expect compile-fail
 * @section 17.16.1
 * @design 元组解构时 LHS 元素数超过元组长度——let [a, b, c] = tup_2 应触发 ESY82935
 * @note 反向用例：验证 LHS 超过元组元素数时产生编译错误
 */
function testMoreLHSThanTuple(): void {
  let tup: [int, string] = [42, "hello"]
  let [a, b, c] = tup
  console.log(a)
}
