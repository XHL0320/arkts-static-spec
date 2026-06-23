/**
 * @id EXP_07_02_01_019_FAIL_FUNC_ARG_MISMATCH
 * @expect compile-fail
 * @section 7.2.1
 * @design 函数调用参数类型与 target type 不匹配
 * @note 反向用例：验证函数参数 target type 的类型检查
 */
function foo(x: int): void {}

function testFuncArgMismatch(): void {
  foo("hello")
}
