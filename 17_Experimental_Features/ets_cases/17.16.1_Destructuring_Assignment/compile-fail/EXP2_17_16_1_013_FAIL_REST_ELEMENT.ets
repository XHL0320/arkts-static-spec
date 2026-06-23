/**
 * @id EXP2_17_16_1_013_FAIL_REST_ELEMENT
 * @expect compile-fail
 * @section 17.16.1
 * @design 解构中的 rest 元素——let [a, ...rest] = arr 触发 ESY165518
 * @note 反向用例：验证 rest 元素在解构中不被支持，产生 ESY165518: Rest is not supported in destructuring
 */
function testRestElement(): void {
  let arr: int[] = [1, 2, 3]
  let [a, ...rest] = arr
  console.log(a)
}
