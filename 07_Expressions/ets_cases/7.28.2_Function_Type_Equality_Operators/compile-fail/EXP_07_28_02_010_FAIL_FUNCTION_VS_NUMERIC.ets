/**
 * @id EXP_07_28_02_010_FAIL_FUNCTION_VS_NUMERIC
 * @expect compile-fail
 * @section 7.28.2
 * @design 验证函数类型与数值类型等值比较产生编译时错误
 * @note 反向用例：函数类型与 int 等数值类型不可比较，应报编译时错误
 */
function foo(): void {}

function main(): void {
  let i: int = 5;
  let r: boolean = foo == i; // compile-time error: function vs numeric not allowed
}
