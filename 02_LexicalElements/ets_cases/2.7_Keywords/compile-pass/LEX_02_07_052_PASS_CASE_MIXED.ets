/**
 * @id LEX_02_07_052_PASS_CASE_MIXED
 * @expect compile-pass
 * @section 2.7
 * @design 大小写敏感: 混合大小写不是关键字
 * @note 正向用例：iNt / nUlL / fAlSe 都是普通标识符
 */
function test052(): void {
  let iNt: int = 1
  let nUlL: int = 2
  let fAlSe: int = 3
  let TrUe: int = 4
}
