/**
 * @id LEX_02_01_003_PASS_UNICODE_ESCAPE_IDENTIFIER
 * @expect compile-pass
 * @section 2.1
 * @design Unicode转义序列标识符: \uHHHH转义定义标识符(\u0041等价于A，不能同时声明同名变量) * @note 正向用例：验证该特性编译通过的正确用法

 */
function testUnicodeEscapeIdentifier(): void {
  let \u03C0: number = 3.14
  let \u0041val: number = 1
}
