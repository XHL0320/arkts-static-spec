/**
 * @id LEX_02_07_057_RT_SOFT_KW_AS_IDENT
 * @expect runtime
 * @section 2.7
 * @design 软关键字作普通标识符运行时正常
 * @note 运行时用例：type/from/of/is/memo 作变量名
 */
function main(): void {
  let type: int = 1
  let from: int = 2
  let of: int = 3
  let is: int = 4
  let memo: int = 5
  let total: int = type + from + of + is + memo
  if (total !== 15) { throw new Error("soft kw sum !== 15") }
}
