/**
 * @id LEX_02_03_019_PASS_WS_IN_STRING_CONTENT
 * @expect compile-pass
 * @section 2.3
 * @design 字符串字面量内的空白属于字符串内容，不是分隔符 * @note 正向用例：验证该特性编译通过的正确用法

 */
function testWsInStringContent(): void {
  let s1: string = "hello world"
  let s2: string = "tab	inside"
  let s3: string = "nbsp inside"
  let s4: string = `template    with		various whitespaces`
}
