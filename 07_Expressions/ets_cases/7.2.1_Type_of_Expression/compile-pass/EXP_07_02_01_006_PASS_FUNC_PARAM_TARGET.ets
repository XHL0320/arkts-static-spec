/**
 * @id EXP_07_02_01_006_PASS_FUNC_PARAM_TARGET
 * @expect compile-pass
 * @section 7.2.1
 * @design 函数参数提供 target type，函数调用中表达式类型匹配参数类型
 * @note 正向用例：验证函数参数作为 target type
 */
function fooInt(x: int): void {}
function fooString(s: string): void {}

function testFuncParamTarget(): void {
  fooInt(42)
  fooString("hello")
}
