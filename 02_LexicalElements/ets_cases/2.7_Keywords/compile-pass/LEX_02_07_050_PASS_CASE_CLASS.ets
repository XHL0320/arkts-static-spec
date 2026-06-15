/**
 * @id LEX_02_07_050_PASS_CASE_CLASS
 * @expect compile-pass
 * @section 2.7
 * @design 大小写敏感: Class（首字母大写）不是关键字 class，可作标识符
 * @note 正向用例：关键字大小写敏感
 */
function test050(): void {
  let Class: int = 1
  let CLASS: int = 2
}
