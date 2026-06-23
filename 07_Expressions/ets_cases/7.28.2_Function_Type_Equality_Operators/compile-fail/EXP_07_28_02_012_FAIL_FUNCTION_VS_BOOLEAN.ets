/**
 * @id EXP_07_28_02_012_FAIL_FUNCTION_VS_BOOLEAN
 * @expect compile-fail
 * @section 7.28.2
 * @design 验证函数类型与布尔类型等值比较产生编译时错误
 * @note 反向用例：函数类型与 boolean 不可比较，应报编译时错误
 */
function foo(): void {}

function main(): void {
  let b: boolean = true;
  let r: boolean = foo == b; // compile-time error: function vs boolean not allowed
}
