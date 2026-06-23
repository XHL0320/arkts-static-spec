/**
 * @id EXP_07_12_01_008_FAIL_SPREAD_NON_REST_PARAM
 * @expect compile-fail
 * @section 7.12.1
 * @design 验证 spread expression 用于非 rest parameter：仅 rest parameter 可用 spread
 * @note 反向用例：func(...arr) 中参数非 rest，spread 展开应报编译时错误
 */
function add(a: int, b: int): int {
  return a + b;
}

function main(): void {
  let arr: int[] = [1, 2];
  let r: int = add(...arr);
}
