/**
 * @id LEX_02_06_037_RT_ZWJ_IDENTIFIER
 * @expect runtime
 * @section 2.6
 * @design 运行时验证 ZWJ/ZWNJ 标识符正确性
 * @note 运行时用例：a+ZWJ+b 与 a+ZWNJ+b 是不同变量
 */
function main(): void {
  let a‍b: int = 100
  let a‌b: int = 200
  // 两个是不同的变量
  if (a‍b !== 100) { throw new Error("zwj var !== 100") }
  if (a‌b !== 200) { throw new Error("zwnj var !== 200") }
}
