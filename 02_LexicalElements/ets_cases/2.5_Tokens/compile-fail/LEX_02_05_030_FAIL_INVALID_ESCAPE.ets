/**
 * @id LEX_02_05_030_FAIL_INVALID_ESCAPE
 * @expect compile-fail
 * @section 2.5
 * @design 字符串字面量含非法 Unicode 转义 \u 应编译失败
 * @note 反向用例：\u 后跟非十六进制字符
 */
function testInvalidEscape(): void {
  let s: string = "\uZZZZ"
}
