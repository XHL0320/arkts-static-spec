/**
 * @id ENM_11_02_005_PASS_STRING_BASE
 * @expect compile-pass
 * @section 11.2
 * @design string 显式基类枚举声明和隐式转 string
 * @note 正向用例
 */
enum Lang5 { TypeScript = "ts", JavaScript = "js", ArkTS = "ets" }

function testStringBase(): void {
  let s: string = Lang5.ArkTS
}