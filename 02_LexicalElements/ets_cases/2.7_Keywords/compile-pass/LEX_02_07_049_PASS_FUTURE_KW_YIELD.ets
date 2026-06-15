/**
 * @id LEX_02_07_049_PASS_FUTURE_KW_YIELD
 * @expect compile-pass
 * @section 2.7
 * @design 未来保留软关键字: yield 当前可作普通标识符（ArkTS 不支持 generator）
 * @note 正向用例：yield 作变量名
 */
function test049(): void {
  let yield: int = 1
  let yieldValue: int = 0
}
