/**
 * @id LEX_02_04_027_RT_TEMPLATE_STRING_NEWLINE_CONTENT
 * @expect runtime
 * @section 2.4
 * @design 模板字符串内的实际 LF 字符成为字符串内容
 * @note 运行时用例：验证 length 包含换行字符（"abc\ndef" = 7 chars）
 */
function main(): void {
  let s: string = `abc
def`
  if (s.length !== 7) { throw new Error("expected length 7, got " + s.length.toString()) }
}
