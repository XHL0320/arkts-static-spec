/**
 * @id LEX_02_01_022_FAIL_SURROGATE_IN_IDENTIFIER
 * @expect compile-fail
 * @section 2.1
 * @design 标识符Unicode转义为孤立代理，应编译失败 * @note 反向用例：验证该场景应产生编译时错误

 */
function testSurrogateInIdentifier(): void {
  let \uD800name: number = 1
}
