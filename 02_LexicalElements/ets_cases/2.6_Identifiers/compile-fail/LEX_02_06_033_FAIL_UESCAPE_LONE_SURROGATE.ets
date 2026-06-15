/**
 * @id LEX_02_06_033_FAIL_UESCAPE_LONE_SURROGATE
 * @expect compile-fail
 * @section 2.6
 * @design 标识符 \u 转义为孤立代理（U+D800）应失败
 * @note 反向用例：\uD800 不是合法 ID_Start
 */
function testUEscapeLoneSurrogate(): void {
  let \uD800name: int = 1
}
