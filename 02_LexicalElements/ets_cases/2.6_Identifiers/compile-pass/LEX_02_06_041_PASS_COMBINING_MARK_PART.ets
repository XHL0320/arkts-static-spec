/**
 * @id LEX_02_06_041_PASS_COMBINING_MARK_PART
 * @expect compile-pass
 * @section 2.6
 * @design 补充测试因子：IdentifierPart 中包含 Mn/Mc/Pc 类 Unicode 字符
 * @note 正向用例：补齐 Mn(组合附加符)、Mc(间距组合符)、Pc(连接符标点) 的实现覆盖
 */
function testCombiningMarkPart(): void {
  let á: int = 1
  let aः: int = 2
  let a‿b: int = 3
}
