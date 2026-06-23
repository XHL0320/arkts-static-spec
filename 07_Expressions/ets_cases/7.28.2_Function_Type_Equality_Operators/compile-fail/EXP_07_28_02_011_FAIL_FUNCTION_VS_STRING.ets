/**
 * @id EXP_07_28_02_011_FAIL_FUNCTION_VS_STRING
 * @expect compile-fail
 * @section 7.28.2
 * @design 验证函数类型与字符串类型等值比较产生编译时错误
 * @note 反向用例：函数类型与 string 不可比较，应报编译时错误
 */
function foo(): void {}

function main(): void {
  let s: string = "hello";
  let r: boolean = foo == s; // compile-time error: function vs string not allowed
}
