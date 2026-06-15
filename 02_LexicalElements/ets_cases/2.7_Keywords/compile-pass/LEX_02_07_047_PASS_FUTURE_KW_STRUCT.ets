/**
 * @id LEX_02_07_047_PASS_FUTURE_KW_STRUCT
 * @expect compile-pass
 * @section 2.7
 * @design 未来保留软关键字: struct 当前可作普通标识符（ArkUI 上下文外）
 * @note 正向用例：struct 作变量名
 */
function test047(): void {
  let struct: int = 1
  let structSize: int = 0
}
