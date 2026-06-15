/**
 * @id LEX_02_06_038_RT_MULTILANG_IDENT
 * @expect runtime
 * @section 2.6
 * @design 运行时验证多语言标识符共存
 * @note 运行时用例：中文 + 日文 + 韩文 + 阿拉伯 标识符
 */
function main(): void {
  let 数据: int = 1
  let データ: int = 2
  let 데이터: int = 3
  let بيانات: int = 4
  let total: int = 数据 + データ + 데이터 + بيانات
  if (total !== 10) { throw new Error("multilang sum !== 10") }
}
