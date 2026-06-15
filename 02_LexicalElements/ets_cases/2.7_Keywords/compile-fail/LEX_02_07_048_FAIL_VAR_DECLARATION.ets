/**
 * @id LEX_02_07_048_FAIL_VAR_DECLARATION
 * @expect compile-fail
 * @section 2.7
 * @design var 在 ArkTS 中作变量声明关键字不可用（必须用 let 或 const）
 * @note 反向用例：var 作变量声明应失败
 */
function test048(): void {
  var x: int = 1
}
