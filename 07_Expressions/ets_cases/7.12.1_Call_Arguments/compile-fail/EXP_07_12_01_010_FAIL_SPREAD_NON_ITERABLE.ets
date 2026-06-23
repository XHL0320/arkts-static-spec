/**
 * @id EXP_07_12_01_010_FAIL_SPREAD_NON_ITERABLE
 * @expect compile-fail
 * @section 7.12.1
 * @design 验证 spread expression 必须为 iterable 或 tuple 类型
 * @note 反向用例：非 iterable 类型（如 int）在 rest parameter 中 spread 应报编译时错误
 *       spread expression 要求 "Any iterable or tuple object referred by the expression"
 */
function foo(...args: int[]): void {
}

function main(): void {
  foo(...42);
}
