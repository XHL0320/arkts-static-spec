/**
 * @id LEX_02_06_020_PASS_FUNC_PARAM_NAME
 * @expect compile-pass
 * @section 2.6
 * @design 标识符作为函数名 + 参数名
 * @note 正向用例：函数名/参数名支持 Unicode
 */
function 加法(参数a: int, 参数b: int): int {
  return 参数a + 参数b
}

function testFuncParamName(): void {
  let r: int = 加法(3, 4)
}
