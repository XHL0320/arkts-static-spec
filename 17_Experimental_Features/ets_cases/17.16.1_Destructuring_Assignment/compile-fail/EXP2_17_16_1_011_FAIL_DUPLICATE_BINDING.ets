/**
 * @id EXP2_17_16_1_011_FAIL_DUPLICATE_BINDING
 * @expect compile-fail
 * @section 17.16.1
 * @design 解构中重复绑定同一变量——let [a, a] = arr 应触发 ESE0351
 * @note 反向用例：验证重复变量绑定产生 ESE0351: Variable 'a' has already been declared
 */
function testDuplicateBinding(): void {
  let arr: int[] = [1, 2]
  let [a, a] = arr
  console.log(a)
}
