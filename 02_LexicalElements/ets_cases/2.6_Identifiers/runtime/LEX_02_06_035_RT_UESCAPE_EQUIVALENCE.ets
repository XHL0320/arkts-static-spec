/**
 * @id LEX_02_06_035_RT_UESCAPE_EQUIVALENCE
 * @expect runtime
 * @section 2.6
 * @design 运行时验证 \u0041 等价于 A（同一变量）
 * @note 运行时用例：转义标识符与直接字符共享同一变量
 */
function main(): void {
  let \u0041var: int = 100
  Avar = Avar + 50
  if (\u0041var !== 150) { throw new Error("escape != direct") }
}
